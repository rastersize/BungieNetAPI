# BungieNetAPI

This is an api generated from a OpenAPI 3.0 spec with [SwagGen](https://github.com/yonaskolb/SwagGen)

## Operation

Each operation lives under the `BungieNetAPI` namespace and within an optional tag: `BungieNetAPI(.tagName).operationId`. If an operation doesn't have an operationId one will be generated from the path and method.

Each operation has a nested `Request` and a `Response`, as well as a static `service` property

#### Service

This is the struct that contains the static information about an operation including it's id, tag, method, pre-modified path, and authorization requirements. It has a generic `ResponseType` type which maps to the `Response` type.
You shouldn't really need to interact with this service type.

#### Request

Each request is a subclass of `APIRequest` and has an `init` with a body param if it has a body, and a `options` struct for other url and path parameters. There is also a convenience init for passing parameters directly.
The `options` and `body` structs are both mutable so they can be modified before actually sending the request.

#### Response

The response is an enum of all the possible responses the request can return. it also contains getters for the `statusCode`, whether it was `successful`, and the actual decoded optional `success` response. If the operation only has one type of failure type there is also an optional `failure` type.

## Model
Models that are sent and returned from the API are mutable classes. Each model is `Equatable` and `Codable`.

`Required` properties are non optional and non-required are optional

All properties can be passed into the initializer, with `required` properties being mandatory.

If a model has `additionalProperties` it will have a subscript to access these by string

## APIClient
The `APIClient` is used to encode, authorize, send, monitor, and decode the requests. There is a `APIClient.default` that uses the default `baseURL` otherwise a custom one can be initialized:

```swift
public init(baseURL: String, sessionManager: SessionManager = .default, defaultHeaders: [String: String] = [:], behaviours: [RequestBehaviour] = [])
```

#### APIClient properties

- `baseURL`: The base url that every request `path` will be appended to
- `behaviours`: A list of [Request Behaviours](#requestbehaviour) to add to every request
- `sessionManager`: An `Alamofire.SessionManager` that can be customized
- `defaultHeaders`: Headers that will be applied to every request
- `decodingQueue`: The `DispatchQueue` to decode responses on

#### Making a request
To make a request first initialize a [Request](#request) and then pass it to `makeRequest`. The `complete` closure will be called with an `APIResponse`

```swift
func makeRequest<T>(_ request: APIRequest<T>, behaviours: [RequestBehaviour] = [], queue: DispatchQueue = DispatchQueue.main, complete: @escaping (APIResponse<T>) -> Void) -> Request? {
```

Example request (that is not neccessarily in this api):

```swift

let getUserRequest = BungieNetAPI.User.GetUser.Request(id: 123)
let apiClient = APIClient.default

apiClient.makeRequest(getUserRequest) { apiResponse in
    switch apiResponse {
        case .result(let apiResponseValue):
		if let user = apiResponseValue.success {
			print("GetUser returned user \(user)")
		} else {
			print("GetUser returned \(apiResponseValue)")
		}
        case .error(let apiError):
		print("GetUser failed with \(apiError)")
    }
}
```

Each [Request](#request) also has a `makeRequest` convenience function that uses `BungieNetAPI.shared`.

#### APIResponse
The `APIResponse` that gets passed to the completion closure contains the following properties:

- `request`: The original request
- `result`: A `Result` type either containing an `APIClientError` or the [Response](#response) of the request
- `urlRequest`: The `URLRequest` used to send the request
- `urlResponse`: The `HTTPURLResponse` that was returned by the request
- `data`: The `Data` returned by the request.
- `timeline`: The `Alamofire.Timeline` of the request which contains timing information.

#### Encoding and Decoding
Only JSON requests and responses are supported. These are encoded and decoded by `JSONEncoder` and `JSONDecoder` respectively, using Swift's `Codable` apis.
There are some options to control how invalid JSON is handled when decoding and these are available as static properties on `BungieNetAPI`:

- `safeOptionalDecoding`: Whether to discard any errors when decoding optional properties. Defaults to `true`.
- `safeArrayDecoding`: Whether to remove invalid elements instead of throwing when decoding arrays. Defaults to `true`.

Dates are encoded and decoded differently according to the swagger date format. They use different `DateFormatter`'s that you can set.
- `date-time`
    - `DateTime.dateEncodingFormatter`: defaults to `yyyy-MM-dd'T'HH:mm:ss.Z`
    - `DateTime.dateDecodingFormatters`: an array of date formatters. The first one to decode successfully will be used
- `date`
    - `DateDay.dateFormatter`: defaults to `yyyy-MM-dd`

#### APIClientError
This is error enum that `APIResponse.result` may contain:

```swift
public enum APIClientError: Error {
    case unexpectedStatusCode(statusCode: Int, data: Data)
    case decodingError(DecodingError)
    case requestEncodingError(String)
    case validationError(String)
    case networkError(Error)
    case unknownError(Error)
}
```

#### RequestBehaviour
Request behaviours are used to modify, authorize, monitor or respond to requests. They can be added to the `APIClient.behaviours` for all requests, or they can passed into `makeRequest` for just that single request.

`RequestBehaviour` is a protocol you can conform to with each function being optional. As the behaviours must work across multiple different request types, they only have access to a typed erased `AnyRequest`.

```swift
public protocol RequestBehaviour {

    /// runs first and allows the requests to be modified. If modifying asynchronously use validate
    func modifyRequest(request: AnyRequest, urlRequest: URLRequest) -> URLRequest

    /// validates and modifies the request. complete must be called with either .success or .fail
    func validate(request: AnyRequest, urlRequest: URLRequest, complete: @escaping (RequestValidationResult) -> Void)

    /// called before request is sent
    func beforeSend(request: AnyRequest)

    /// called when request successfuly returns a 200 range response
    func onSuccess(request: AnyRequest, result: Any)

    /// called when request fails with an error. This will not be called if the request returns a known response even if the a status code is out of the 200 range
    func onFailure(request: AnyRequest, error: APIClientError)

    /// called if the request recieves a network response. This is not called if request fails validation or encoding
    func onResponse(request: AnyRequest, response: AnyResponse)
}
```

### Authorization
Each request has an optional `securityRequirement`. You can create a `RequestBehaviour` that checks this requirement and adds some form of authorization (usually via headers) in `validate` or `modifyRequest`. An alternative way is to set the `APIClient.defaultHeaders` which applies to all requests.

#### Reactive and Promises
To add support for a specific asynchronous library, just add an extension on `APIClient` and add a function that wraps the `makeRequest` function and converts from a closure based syntax to returning the object of choice (stream, future...ect)

## Models

- **ApplicationsApiUsage**
- **ApplicationsApplication**
- **ApplicationsApplicationDeveloper**
- **ApplicationsApplicationScopes**
- **ApplicationsApplicationStatus**
- **ApplicationsDatapoint**
- **ApplicationsDeveloperRole**
- **ApplicationsOAuthApplicationType**
- **ApplicationsSeries**
- **BungieCredentialType**
- **BungieMembershipType**
- **BungieMembershipType**
- **CommonModelsCoreSetting**
- **CommonModelsCoreSettingsConfiguration**
- **CommonModelsCoreSystem**
- **CommonModelsDestiny2CoreSettings**
- **CommunityCommunityLiveStatus**
- **CommunityCommunityStatusSort**
- **ComponentsComponentPrivacySetting**
- **ComponentsComponentResponse**
- **ConfigGroupTheme**
- **ConfigUserTheme**
- **ContentCommentSummary**
- **ContentContentItemPublicContract**
- **ContentContentRepresentation**
- **ContentModelsContentPreview**
- **ContentModelsContentPropertyDataTypeEnum**
- **ContentModelsContentTypeDefaultValue**
- **ContentModelsContentTypeDescription**
- **ContentModelsContentTypeProperty**
- **ContentModelsContentTypePropertySection**
- **ContentModelsTagMetadataDefinition**
- **ContentModelsTagMetadataItem**
- **DatesDateRange**
- **DestinyActivitiesDestinyPublicActivityStatus**
- **DestinyActivityGraphNodeHighlightType**
- **DestinyAdvancedAwaAuthorizationResult**
- **DestinyAdvancedAwaInitializeResponse**
- **DestinyAdvancedAwaPermissionRequested**
- **DestinyAdvancedAwaResponseReason**
- **DestinyAdvancedAwaType**
- **DestinyAdvancedAwaUserResponse**
- **DestinyAdvancedAwaUserSelection**
- **DestinyArtifactsDestinyArtifactCharacterScoped**
- **DestinyArtifactsDestinyArtifactProfileScoped**
- **DestinyArtifactsDestinyArtifactTier**
- **DestinyArtifactsDestinyArtifactTierItem**
- **DestinyBaseItemComponentSetOfint32**
- **DestinyBaseItemComponentSetOfint64**
- **DestinyBaseItemComponentSetOfuint32**
- **DestinyBucketCategory**
- **DestinyBucketScope**
- **DestinyChallengesDestinyChallengeStatus**
- **DestinyCharacterDestinyCharacterCustomization**
- **DestinyCharacterDestinyCharacterPeerView**
- **DestinyCharacterDestinyItemPeerView**
- **DestinyComponentsCollectiblesDestinyCollectibleComponent**
- **DestinyComponentsCollectiblesDestinyCollectiblesComponent**
- **DestinyComponentsCollectiblesDestinyProfileCollectiblesComponent**
- **DestinyComponentsInventoryDestinyCurrenciesComponent**
- **DestinyComponentsInventoryDestinyPlatformSilverComponent**
- **DestinyComponentsItemsDestinyItemPlugComponent**
- **DestinyComponentsItemsDestinyItemPlugObjectivesComponent**
- **DestinyComponentsItemsDestinyItemReusablePlugsComponent**
- **DestinyComponentsKiosksDestinyKioskItem**
- **DestinyComponentsKiosksDestinyKiosksComponent**
- **DestinyComponentsPlugSetsDestinyPlugSetsComponent**
- **DestinyComponentsPresentationDestinyPresentationNodeComponent**
- **DestinyComponentsPresentationDestinyPresentationNodesComponent**
- **DestinyComponentsProfilesDestinyProfileProgressionComponent**
- **DestinyComponentsProfilesDestinyProfileTransitoryComponent**
- **DestinyComponentsProfilesDestinyProfileTransitoryCurrentActivity**
- **DestinyComponentsProfilesDestinyProfileTransitoryJoinability**
- **DestinyComponentsProfilesDestinyProfileTransitoryPartyMember**
- **DestinyComponentsProfilesDestinyProfileTransitoryTrackingEntry**
- **DestinyComponentsRecordsDestinyCharacterRecordsComponent**
- **DestinyComponentsRecordsDestinyProfileRecordsComponent**
- **DestinyComponentsRecordsDestinyRecordComponent**
- **DestinyComponentsRecordsDestinyRecordsComponent**
- **DestinyComponentsVendorsDestinyPublicVendorComponent**
- **DestinyComponentsVendorsDestinyPublicVendorSaleItemComponent**
- **DestinyComponentsVendorsDestinyVendorBaseComponent**
- **DestinyComponentsVendorsDestinyVendorGroup**
- **DestinyComponentsVendorsDestinyVendorGroupComponent**
- **DestinyComponentsVendorsDestinyVendorSaleItemBaseComponent**
- **DestinyConfigDestinyManifest**
- **DestinyConfigGearAssetDataBaseDefinition**
- **DestinyConfigImagePyramidEntry**
- **DestinyConstantsDestinyEnvironmentLocationMapping**
- **DestinyDamageType**
- **DestinyDefinitionsActivityModifiersDestinyActivityModifierDefinition**
- **DestinyDefinitionsAnimationsDestinyAnimationReference**
- **DestinyDefinitionsArtifactsDestinyArtifactDefinition**
- **DestinyDefinitionsArtifactsDestinyArtifactTierDefinition**
- **DestinyDefinitionsArtifactsDestinyArtifactTierItemDefinition**
- **DestinyDefinitionsBreakerTypesDestinyBreakerTypeDefinition**
- **DestinyDefinitionsChecklistsDestinyChecklistDefinition**
- **DestinyDefinitionsChecklistsDestinyChecklistEntryDefinition**
- **DestinyDefinitionsCollectiblesDestinyCollectibleAcquisitionBlock**
- **DestinyDefinitionsCollectiblesDestinyCollectibleDefinition**
- **DestinyDefinitionsCollectiblesDestinyCollectibleStateBlock**
- **DestinyDefinitionsCommonDestinyDisplayPropertiesDefinition**
- **DestinyDefinitionsCommonDestinyPositionDefinition**
- **DestinyDefinitionsDestinyActivityChallengeDefinition**
- **DestinyDefinitionsDestinyActivityDefinition**
- **DestinyDefinitionsDestinyActivityGraphListEntryDefinition**
- **DestinyDefinitionsDestinyActivityGuidedBlockDefinition**
- **DestinyDefinitionsDestinyActivityInsertionPointDefinition**
- **DestinyDefinitionsDestinyActivityLoadoutRequirement**
- **DestinyDefinitionsDestinyActivityLoadoutRequirementSet**
- **DestinyDefinitionsDestinyActivityMatchmakingBlockDefinition**
- **DestinyDefinitionsDestinyActivityModeDefinition**
- **DestinyDefinitionsDestinyActivityModifierReferenceDefinition**
- **DestinyDefinitionsDestinyActivityPlaylistItemDefinition**
- **DestinyDefinitionsDestinyActivityRewardDefinition**
- **DestinyDefinitionsDestinyActivityTypeDefinition**
- **DestinyDefinitionsDestinyActivityUnlockStringDefinition**
- **DestinyDefinitionsDestinyArtDyeReference**
- **DestinyDefinitionsDestinyBubbleDefinition**
- **DestinyDefinitionsDestinyClassDefinition**
- **DestinyDefinitionsDestinyDamageTypeDefinition**
- **DestinyDefinitionsDestinyDefinition**
- **DestinyDefinitionsDestinyDestinationBubbleSettingDefinition**
- **DestinyDefinitionsDestinyDestinationDefinition**
- **DestinyDefinitionsDestinyDisplayCategoryDefinition**
- **DestinyDefinitionsDestinyEntitySearchResult**
- **DestinyDefinitionsDestinyEntitySearchResultItem**
- **DestinyDefinitionsDestinyEquipmentSlotDefinition**
- **DestinyDefinitionsDestinyEquippingBlockDefinition**
- **DestinyDefinitionsDestinyFactionDefinition**
- **DestinyDefinitionsDestinyFactionVendorDefinition**
- **DestinyDefinitionsDestinyGearArtArrangementReference**
- **DestinyDefinitionsDestinyGenderDefinition**
- **DestinyDefinitionsDestinyInventoryBucketDefinition**
- **DestinyDefinitionsDestinyInventoryItemDefinition**
- **DestinyDefinitionsDestinyInventoryItemStatDefinition**
- **DestinyDefinitionsDestinyItemActionBlockDefinition**
- **DestinyDefinitionsDestinyItemActionRequiredItemDefinition**
- **DestinyDefinitionsDestinyItemCategoryDefinition**
- **DestinyDefinitionsDestinyItemCreationEntryLevelDefinition**
- **DestinyDefinitionsDestinyItemGearsetBlockDefinition**
- **DestinyDefinitionsDestinyItemIntrinsicSocketEntryDefinition**
- **DestinyDefinitionsDestinyItemInventoryBlockDefinition**
- **DestinyDefinitionsDestinyItemInvestmentStatDefinition**
- **DestinyDefinitionsDestinyItemObjectiveBlockDefinition**
- **DestinyDefinitionsDestinyItemPerkEntryDefinition**
- **DestinyDefinitionsDestinyItemPreviewBlockDefinition**
- **DestinyDefinitionsDestinyItemQualityBlockDefinition**
- **DestinyDefinitionsDestinyItemSackBlockDefinition**
- **DestinyDefinitionsDestinyItemSetBlockDefinition**
- **DestinyDefinitionsDestinyItemSetBlockEntryDefinition**
- **DestinyDefinitionsDestinyItemSocketBlockDefinition**
- **DestinyDefinitionsDestinyItemSocketCategoryDefinition**
- **DestinyDefinitionsDestinyItemSocketEntryDefinition**
- **DestinyDefinitionsDestinyItemSocketEntryPlugItemDefinition**
- **DestinyDefinitionsDestinyItemSocketEntryPlugItemRandomizedDefinition**
- **DestinyDefinitionsDestinyItemSourceBlockDefinition**
- **DestinyDefinitionsDestinyItemStatBlockDefinition**
- **DestinyDefinitionsDestinyItemSummaryBlockDefinition**
- **DestinyDefinitionsDestinyItemTalentGridBlockDefinition**
- **DestinyDefinitionsDestinyItemTooltipNotification**
- **DestinyDefinitionsDestinyItemTranslationBlockDefinition**
- **DestinyDefinitionsDestinyItemValueBlockDefinition**
- **DestinyDefinitionsDestinyItemVendorSourceReference**
- **DestinyDefinitionsDestinyLocationDefinition**
- **DestinyDefinitionsDestinyLocationReleaseDefinition**
- **DestinyDefinitionsDestinyMaterialRequirement**
- **DestinyDefinitionsDestinyMaterialRequirementSetDefinition**
- **DestinyDefinitionsDestinyNodeActivationRequirement**
- **DestinyDefinitionsDestinyNodeSocketReplaceResponse**
- **DestinyDefinitionsDestinyNodeStepDefinition**
- **DestinyDefinitionsDestinyObjectiveDefinition**
- **DestinyDefinitionsDestinyObjectiveDisplayProperties**
- **DestinyDefinitionsDestinyObjectivePerkEntryDefinition**
- **DestinyDefinitionsDestinyObjectiveStatEntryDefinition**
- **DestinyDefinitionsDestinyPlaceDefinition**
- **DestinyDefinitionsDestinyProgressionDefinition**
- **DestinyDefinitionsDestinyProgressionDisplayPropertiesDefinition**
- **DestinyDefinitionsDestinyProgressionMappingDefinition**
- **DestinyDefinitionsDestinyProgressionRewardDefinition**
- **DestinyDefinitionsDestinyProgressionRewardItemQuantity**
- **DestinyDefinitionsDestinyProgressionStepDefinition**
- **DestinyDefinitionsDestinyRaceDefinition**
- **DestinyDefinitionsDestinyRewardSourceCategory**
- **DestinyDefinitionsDestinyRewardSourceDefinition**
- **DestinyDefinitionsDestinySandboxPerkDefinition**
- **DestinyDefinitionsDestinyStatDefinition**
- **DestinyDefinitionsDestinyStatDisplayDefinition**
- **DestinyDefinitionsDestinyStatGroupDefinition**
- **DestinyDefinitionsDestinyStatOverrideDefinition**
- **DestinyDefinitionsDestinyTalentExclusiveGroup**
- **DestinyDefinitionsDestinyTalentGridDefinition**
- **DestinyDefinitionsDestinyTalentNodeCategory**
- **DestinyDefinitionsDestinyTalentNodeDefinition**
- **DestinyDefinitionsDestinyTalentNodeExclusiveSetDefinition**
- **DestinyDefinitionsDestinyTalentNodeStepDamageTypes**
- **DestinyDefinitionsDestinyTalentNodeStepGroups**
- **DestinyDefinitionsDestinyTalentNodeStepGuardianAttributes**
- **DestinyDefinitionsDestinyTalentNodeStepImpactEffects**
- **DestinyDefinitionsDestinyTalentNodeStepLightAbilities**
- **DestinyDefinitionsDestinyTalentNodeStepWeaponPerformances**
- **DestinyDefinitionsDestinyUnlockDefinition**
- **DestinyDefinitionsDestinyUnlockExpressionDefinition**
- **DestinyDefinitionsDestinyUnlockValueDefinition**
- **DestinyDefinitionsDestinyVendorAcceptedItemDefinition**
- **DestinyDefinitionsDestinyVendorActionDefinition**
- **DestinyDefinitionsDestinyVendorCategoryEntryDefinition**
- **DestinyDefinitionsDestinyVendorCategoryOverlayDefinition**
- **DestinyDefinitionsDestinyVendorDefinition**
- **DestinyDefinitionsDestinyVendorDisplayPropertiesDefinition**
- **DestinyDefinitionsDestinyVendorGroupDefinition**
- **DestinyDefinitionsDestinyVendorGroupReference**
- **DestinyDefinitionsDestinyVendorInteractionDefinition**
- **DestinyDefinitionsDestinyVendorInteractionReplyDefinition**
- **DestinyDefinitionsDestinyVendorInteractionSackEntryDefinition**
- **DestinyDefinitionsDestinyVendorInventoryFlyoutBucketDefinition**
- **DestinyDefinitionsDestinyVendorInventoryFlyoutDefinition**
- **DestinyDefinitionsDestinyVendorItemDefinition**
- **DestinyDefinitionsDestinyVendorItemQuantity**
- **DestinyDefinitionsDestinyVendorItemSocketOverride**
- **DestinyDefinitionsDestinyVendorRequirementDisplayEntryDefinition**
- **DestinyDefinitionsDestinyVendorSaleItemActionBlockDefinition**
- **DestinyDefinitionsDestinyVendorServiceDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphArtElementDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphConnectionDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphDisplayObjectiveDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphDisplayProgressionDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphNodeActivityDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphNodeDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphNodeFeaturingStateDefinition**
- **DestinyDefinitionsDirectorDestinyActivityGraphNodeStateEntry**
- **DestinyDefinitionsDirectorDestinyLinkedGraphDefinition**
- **DestinyDefinitionsDirectorDestinyLinkedGraphEntryDefinition**
- **DestinyDefinitionsEnergyTypesDestinyEnergyTypeDefinition**
- **DestinyDefinitionsItemsDestinyDerivedItemCategoryDefinition**
- **DestinyDefinitionsItemsDestinyDerivedItemDefinition**
- **DestinyDefinitionsItemsDestinyEnergyCapacityEntry**
- **DestinyDefinitionsItemsDestinyEnergyCostEntry**
- **DestinyDefinitionsItemsDestinyItemPlugDefinition**
- **DestinyDefinitionsItemsDestinyItemTierTypeDefinition**
- **DestinyDefinitionsItemsDestinyItemTierTypeInfusionBlock**
- **DestinyDefinitionsItemsDestinyParentItemOverride**
- **DestinyDefinitionsItemsDestinyPlugRuleDefinition**
- **DestinyDefinitionsLoreDestinyLoreDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneActivityDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneActivityVariantDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityGraphNodeEntry**
- **DestinyDefinitionsMilestonesDestinyMilestoneChallengeActivityPhase**
- **DestinyDefinitionsMilestonesDestinyMilestoneChallengeDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneDisplayPreference**
- **DestinyDefinitionsMilestonesDestinyMilestoneQuestDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardItem**
- **DestinyDefinitionsMilestonesDestinyMilestoneQuestRewardsDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneRewardCategoryDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneRewardEntryDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneType**
- **DestinyDefinitionsMilestonesDestinyMilestoneValueDefinition**
- **DestinyDefinitionsMilestonesDestinyMilestoneVendorDefinition**
- **DestinyDefinitionsPresentationDestinyPresentationChildBlock**
- **DestinyDefinitionsPresentationDestinyPresentationNodeChildEntry**
- **DestinyDefinitionsPresentationDestinyPresentationNodeChildrenBlock**
- **DestinyDefinitionsPresentationDestinyPresentationNodeCollectibleChildEntry**
- **DestinyDefinitionsPresentationDestinyPresentationNodeDefinition**
- **DestinyDefinitionsPresentationDestinyPresentationNodeRecordChildEntry**
- **DestinyDefinitionsPresentationDestinyPresentationNodeRequirementsBlock**
- **DestinyDefinitionsProgressionDestinyProgressionLevelRequirementDefinition**
- **DestinyDefinitionsRecordsDestinyRecordCompletionBlock**
- **DestinyDefinitionsRecordsDestinyRecordDefinition**
- **DestinyDefinitionsRecordsDestinyRecordExpirationBlock**
- **DestinyDefinitionsRecordsDestinyRecordIntervalBlock**
- **DestinyDefinitionsRecordsDestinyRecordIntervalObjective**
- **DestinyDefinitionsRecordsDestinyRecordTitleBlock**
- **DestinyDefinitionsRecordsSchemaRecordStateBlock**
- **DestinyDefinitionsReportingDestinyReportReasonCategoryDefinition**
- **DestinyDefinitionsReportingDestinyReportReasonDefinition**
- **DestinyDefinitionsSeasonsDestinySeasonDefinition**
- **DestinyDefinitionsSeasonsDestinySeasonPassDefinition**
- **DestinyDefinitionsSocketsDestinyInsertPlugActionDefinition**
- **DestinyDefinitionsSocketsDestinyPlugSetDefinition**
- **DestinyDefinitionsSocketsDestinyPlugWhitelistEntryDefinition**
- **DestinyDefinitionsSocketsDestinySocketCategoryDefinition**
- **DestinyDefinitionsSocketsDestinySocketTypeDefinition**
- **DestinyDefinitionsSocketsDestinySocketTypeScalarMaterialRequirementEntry**
- **DestinyDefinitionsSourcesDestinyItemSourceDefinition**
- **DestinyDefinitionsVendorsDestinyVendorLocationDefinition**
- **DestinyDestinyActivity**
- **DestinyDestinyActivityDifficultyTier**
- **DestinyDestinyActivityModeCategory**
- **DestinyDestinyActivityNavPointType**
- **DestinyDestinyAmmunitionType**
- **DestinyDestinyBreakerType**
- **DestinyDestinyClass**
- **DestinyDestinyCollectibleState**
- **DestinyDestinyComponentType**
- **DestinyDestinyEnergyType**
- **DestinyDestinyEquipItemResult**
- **DestinyDestinyEquipItemResults**
- **DestinyDestinyGamePrivacySetting**
- **DestinyDestinyGameVersions**
- **DestinyDestinyGatingScope**
- **DestinyDestinyGender**
- **DestinyDestinyGraphNodeState**
- **DestinyDestinyItemQuantity**
- **DestinyDestinyItemSortType**
- **DestinyDestinyItemSubType**
- **DestinyDestinyItemType**
- **DestinyDestinyJoinClosedReasons**
- **DestinyDestinyObjectiveGrantStyle**
- **DestinyDestinyPartyMemberStates**
- **DestinyDestinyPresentationDisplayStyle**
- **DestinyDestinyPresentationNodeState**
- **DestinyDestinyPresentationNodeType**
- **DestinyDestinyPresentationScreenStyle**
- **DestinyDestinyProgression**
- **DestinyDestinyProgressionResetEntry**
- **DestinyDestinyProgressionRewardItemAcquisitionBehavior**
- **DestinyDestinyProgressionRewardItemState**
- **DestinyDestinyProgressionScope**
- **DestinyDestinyProgressionStepDisplayEffect**
- **DestinyDestinyRace**
- **DestinyDestinyRecordState**
- **DestinyDestinyRecordToastStyle**
- **DestinyDestinyRecordValueStyle**
- **DestinyDestinyScope**
- **DestinyDestinySocketCategoryStyle**
- **DestinyDestinySocketVisibility**
- **DestinyDestinyStat**
- **DestinyDestinyStatAggregationType**
- **DestinyDestinyStatCategory**
- **DestinyDestinyTalentNode**
- **DestinyDestinyTalentNodeStatBlock**
- **DestinyDestinyTalentNodeState**
- **DestinyDestinyUnlockStatus**
- **DestinyDestinyUnlockValueUIStyle**
- **DestinyDestinyVendorInteractionRewardSelection**
- **DestinyDestinyVendorItemRefundPolicy**
- **DestinyDestinyVendorItemState**
- **DestinyDestinyVendorReplyType**
- **DestinyDyeReference**
- **DestinyEntitiesCharactersDestinyCharacterActivitiesComponent**
- **DestinyEntitiesCharactersDestinyCharacterComponent**
- **DestinyEntitiesCharactersDestinyCharacterProgressionComponent**
- **DestinyEntitiesCharactersDestinyCharacterRenderComponent**
- **DestinyEntitiesInventoryDestinyInventoryComponent**
- **DestinyEntitiesItemsDestinyItemComponent**
- **DestinyEntitiesItemsDestinyItemInstanceComponent**
- **DestinyEntitiesItemsDestinyItemInstanceEnergy**
- **DestinyEntitiesItemsDestinyItemObjectivesComponent**
- **DestinyEntitiesItemsDestinyItemPerksComponent**
- **DestinyEntitiesItemsDestinyItemRenderComponent**
- **DestinyEntitiesItemsDestinyItemSocketState**
- **DestinyEntitiesItemsDestinyItemSocketsComponent**
- **DestinyEntitiesItemsDestinyItemStatsComponent**
- **DestinyEntitiesItemsDestinyItemTalentGridComponent**
- **DestinyEntitiesProfilesDestinyProfileComponent**
- **DestinyEntitiesProfilesDestinyVendorReceiptsComponent**
- **DestinyEntitiesVendorsDestinyVendorCategoriesComponent**
- **DestinyEntitiesVendorsDestinyVendorCategory**
- **DestinyEntitiesVendorsDestinyVendorComponent**
- **DestinyEntitiesVendorsDestinyVendorSaleItemComponent**
- **DestinyEquipFailureReason**
- **DestinyEquippingItemBlockAttributes**
- **DestinyHistoricalStatsDefinitionsDestinyActivityModeType**
- **DestinyHistoricalStatsDefinitionsDestinyActivityModeType**
- **DestinyHistoricalStatsDefinitionsDestinyHistoricalStatsDefinition**
- **DestinyHistoricalStatsDefinitionsDestinyStatsCategoryType**
- **DestinyHistoricalStatsDefinitionsDestinyStatsGroupType**
- **DestinyHistoricalStatsDefinitionsDestinyStatsMergeMethod**
- **DestinyHistoricalStatsDefinitionsPeriodType**
- **DestinyHistoricalStatsDefinitionsPeriodType**
- **DestinyHistoricalStatsDefinitionsUnitType**
- **DestinyHistoricalStatsDestinyActivityHistoryResults**
- **DestinyHistoricalStatsDestinyAggregateActivityResults**
- **DestinyHistoricalStatsDestinyAggregateActivityStats**
- **DestinyHistoricalStatsDestinyClanAggregateStat**
- **DestinyHistoricalStatsDestinyHistoricalStatsAccountResult**
- **DestinyHistoricalStatsDestinyHistoricalStatsActivity**
- **DestinyHistoricalStatsDestinyHistoricalStatsByPeriod**
- **DestinyHistoricalStatsDestinyHistoricalStatsPerCharacter**
- **DestinyHistoricalStatsDestinyHistoricalStatsPeriodGroup**
- **DestinyHistoricalStatsDestinyHistoricalStatsResults**
- **DestinyHistoricalStatsDestinyHistoricalStatsValue**
- **DestinyHistoricalStatsDestinyHistoricalStatsValuePair**
- **DestinyHistoricalStatsDestinyHistoricalStatsWithMerged**
- **DestinyHistoricalStatsDestinyHistoricalWeaponStats**
- **DestinyHistoricalStatsDestinyHistoricalWeaponStatsData**
- **DestinyHistoricalStatsDestinyLeaderboard**
- **DestinyHistoricalStatsDestinyLeaderboardEntry**
- **DestinyHistoricalStatsDestinyLeaderboardResults**
- **DestinyHistoricalStatsDestinyPlayer**
- **DestinyHistoricalStatsDestinyPostGameCarnageReportData**
- **DestinyHistoricalStatsDestinyPostGameCarnageReportEntry**
- **DestinyHistoricalStatsDestinyPostGameCarnageReportExtendedData**
- **DestinyHistoricalStatsDestinyPostGameCarnageReportTeamEntry**
- **DestinyItemBindStatus**
- **DestinyItemComponentSetOfint32**
- **DestinyItemComponentSetOfint64**
- **DestinyItemComponentSetOfuint32**
- **DestinyItemLocation**
- **DestinyItemPerkVisibility**
- **DestinyItemState**
- **DestinyMilestonesDestinyMilestone**
- **DestinyMilestonesDestinyMilestoneActivity**
- **DestinyMilestonesDestinyMilestoneActivityCompletionStatus**
- **DestinyMilestonesDestinyMilestoneActivityPhase**
- **DestinyMilestonesDestinyMilestoneActivityVariant**
- **DestinyMilestonesDestinyMilestoneChallengeActivity**
- **DestinyMilestonesDestinyMilestoneContent**
- **DestinyMilestonesDestinyMilestoneContentItemCategory**
- **DestinyMilestonesDestinyMilestoneQuest**
- **DestinyMilestonesDestinyMilestoneRewardCategory**
- **DestinyMilestonesDestinyMilestoneRewardEntry**
- **DestinyMilestonesDestinyMilestoneVendor**
- **DestinyMilestonesDestinyPublicMilestone**
- **DestinyMilestonesDestinyPublicMilestoneActivity**
- **DestinyMilestonesDestinyPublicMilestoneActivityVariant**
- **DestinyMilestonesDestinyPublicMilestoneChallenge**
- **DestinyMilestonesDestinyPublicMilestoneChallengeActivity**
- **DestinyMilestonesDestinyPublicMilestoneQuest**
- **DestinyMilestonesDestinyPublicMilestoneVendor**
- **DestinyMiscDestinyColor**
- **DestinyPerksDestinyPerkReference**
- **DestinyPlugAvailabilityMode**
- **DestinyPlugUiStyles**
- **DestinyProgressionDestinyFactionProgression**
- **DestinyQuestsDestinyObjectiveProgress**
- **DestinyQuestsDestinyQuestStatus**
- **DestinyReportingRequestsDestinyReportOffensePgcrRequest**
- **DestinyRequestsActionsDestinyActionRequest**
- **DestinyRequestsActionsDestinyCharacterActionRequest**
- **DestinyRequestsActionsDestinyInsertPlugsActionRequest**
- **DestinyRequestsActionsDestinyInsertPlugsRequestEntry**
- **DestinyRequestsActionsDestinyItemActionRequest**
- **DestinyRequestsActionsDestinyItemSetActionRequest**
- **DestinyRequestsActionsDestinyItemStateRequest**
- **DestinyRequestsActionsDestinyPostmasterTransferRequest**
- **DestinyRequestsActionsDestinySocketArrayType**
- **DestinyRequestsDestinyItemTransferRequest**
- **DestinyResponsesDestinyCharacterResponse**
- **DestinyResponsesDestinyCollectibleNodeDetailResponse**
- **DestinyResponsesDestinyErrorProfile**
- **DestinyResponsesDestinyItemChangeResponse**
- **DestinyResponsesDestinyItemResponse**
- **DestinyResponsesDestinyLinkedProfilesResponse**
- **DestinyResponsesDestinyProfileResponse**
- **DestinyResponsesDestinyProfileUserInfoCard**
- **DestinyResponsesDestinyPublicVendorsResponse**
- **DestinyResponsesDestinyVendorResponse**
- **DestinyResponsesDestinyVendorsResponse**
- **DestinyResponsesInventoryChangedResponse**
- **DestinyResponsesPersonalDestinyVendorSaleItemSetComponent**
- **DestinyResponsesPublicDestinyVendorSaleItemSetComponent**
- **DestinySocketPlugSources**
- **DestinySocketTypeActionType**
- **DestinySocketsDestinyItemPlug**
- **DestinySocketsDestinyItemPlugBase**
- **DestinySpecialItemType**
- **DestinyTierType**
- **DestinyTransferStatuses**
- **DestinyVendorDisplayCategorySortOrder**
- **DestinyVendorInteractionType**
- **DestinyVendorItemStatus**
- **DestinyVendorSaleItemSetComponentOfDestinyPublicVendorSaleItemComponent**
- **DestinyVendorSaleItemSetComponentOfDestinyVendorSaleItemComponent**
- **DestinyVendorsDestinyVendorReceipt**
- **DictionaryComponentResponseOfint32AndDestinyItemInstanceComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemObjectivesComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemPerksComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemPlugObjectivesComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemRenderComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemReusablePlugsComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemSocketsComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemStatsComponent**
- **DictionaryComponentResponseOfint32AndDestinyItemTalentGridComponent**
- **DictionaryComponentResponseOfint32AndDestinyVendorSaleItemComponent**
- **DictionaryComponentResponseOfint64AndDestinyCharacterActivitiesComponent**
- **DictionaryComponentResponseOfint64AndDestinyCharacterComponent**
- **DictionaryComponentResponseOfint64AndDestinyCharacterProgressionComponent**
- **DictionaryComponentResponseOfint64AndDestinyCharacterRecordsComponent**
- **DictionaryComponentResponseOfint64AndDestinyCharacterRenderComponent**
- **DictionaryComponentResponseOfint64AndDestinyCollectiblesComponent**
- **DictionaryComponentResponseOfint64AndDestinyCurrenciesComponent**
- **DictionaryComponentResponseOfint64AndDestinyInventoryComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemInstanceComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemObjectivesComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemPerksComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemPlugObjectivesComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemRenderComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemReusablePlugsComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemSocketsComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemStatsComponent**
- **DictionaryComponentResponseOfint64AndDestinyItemTalentGridComponent**
- **DictionaryComponentResponseOfint64AndDestinyKiosksComponent**
- **DictionaryComponentResponseOfint64AndDestinyPlugSetsComponent**
- **DictionaryComponentResponseOfint64AndDestinyPresentationNodesComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemInstanceComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemObjectivesComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemPerksComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemPlugComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemPlugObjectivesComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemRenderComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemReusablePlugsComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemSocketsComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemStatsComponent**
- **DictionaryComponentResponseOfuint32AndDestinyItemTalentGridComponent**
- **DictionaryComponentResponseOfuint32AndDestinyPublicVendorComponent**
- **DictionaryComponentResponseOfuint32AndDestinyVendorCategoriesComponent**
- **DictionaryComponentResponseOfuint32AndDestinyVendorComponent**
- **DictionaryComponentResponseOfuint32AndPersonalDestinyVendorSaleItemSetComponent**
- **DictionaryComponentResponseOfuint32AndPublicDestinyVendorSaleItemSetComponent**
- **EntitiesEntityActionResult**
- **ExceptionsPlatformErrorCodes**
- **FireteamFireteamActivityType**
- **FireteamFireteamDateRange**
- **FireteamFireteamMember**
- **FireteamFireteamPlatform**
- **FireteamFireteamPlatformInviteResult**
- **FireteamFireteamPublicSearchOption**
- **FireteamFireteamResponse**
- **FireteamFireteamSlotSearch**
- **FireteamFireteamSummary**
- **FireteamFireteamUserInfoCard**
- **ForumCommunityContentSortMode**
- **ForumForumMediaType**
- **ForumForumPostPopularity**
- **ForumForumPostSortEnum**
- **ForumForumRecruitmentDetail**
- **ForumForumRecruitmentIntensityLabel**
- **ForumForumRecruitmentToneLabel**
- **ForumForumTopicsCategoryFiltersEnum**
- **ForumForumTopicsQuickDateEnum**
- **ForumForumTopicsSortEnum**
- **ForumPollResponse**
- **ForumPollResult**
- **ForumPostResponse**
- **ForumPostSearchResponse**
- **ForumsForumFlagsEnum**
- **ForumsForumPostCategoryEnums**
- **GlobalAlert**
- **GlobalAlertLevel**
- **GlobalAlertType**
- **GroupsV2Capabilities**
- **GroupsV2ChatSecuritySetting**
- **GroupsV2ClanBanner**
- **GroupsV2GetGroupsForMemberResponse**
- **GroupsV2GroupAllianceStatus**
- **GroupsV2GroupApplicationListRequest**
- **GroupsV2GroupApplicationRequest**
- **GroupsV2GroupApplicationResolveState**
- **GroupsV2GroupApplicationResponse**
- **GroupsV2GroupBan**
- **GroupsV2GroupBanRequest**
- **GroupsV2GroupDateRange**
- **GroupsV2GroupEditAction**
- **GroupsV2GroupFeatures**
- **GroupsV2GroupHomepage**
- **GroupsV2GroupMember**
- **GroupsV2GroupMemberApplication**
- **GroupsV2GroupMemberCountFilter**
- **GroupsV2GroupMemberLeaveResult**
- **GroupsV2GroupMembership**
- **GroupsV2GroupMembershipBase**
- **GroupsV2GroupMembershipSearchResponse**
- **GroupsV2GroupNameSearchRequest**
- **GroupsV2GroupOptionalConversation**
- **GroupsV2GroupOptionalConversationAddRequest**
- **GroupsV2GroupOptionalConversationEditRequest**
- **GroupsV2GroupOptionsEditAction**
- **GroupsV2GroupPostPublicity**
- **GroupsV2GroupPotentialMember**
- **GroupsV2GroupPotentialMemberStatus**
- **GroupsV2GroupPotentialMembership**
- **GroupsV2GroupPotentialMembershipSearchResponse**
- **GroupsV2GroupQuery**
- **GroupsV2GroupResponse**
- **GroupsV2GroupSearchResponse**
- **GroupsV2GroupSortBy**
- **GroupsV2GroupType**
- **GroupsV2GroupUserBase**
- **GroupsV2GroupUserInfoCard**
- **GroupsV2GroupV2**
- **GroupsV2GroupV2Card**
- **GroupsV2GroupV2ClanInfo**
- **GroupsV2GroupV2ClanInfoAndInvestment**
- **GroupsV2GroupsForMemberFilter**
- **GroupsV2HostGuidedGamesPermissionLevel**
- **GroupsV2MembershipOption**
- **GroupsV2RuntimeGroupMemberType**
- **IgnoresIgnoreLength**
- **IgnoresIgnoreResponse**
- **IgnoresIgnoreStatus**
- **InterpolationInterpolationPoint**
- **InterpolationInterpolationPointFloat**
- **LinksHyperlinkReference**
- **PartnershipsPartnershipType**
- **PartnershipsPublicPartnershipDetail**
- **QueriesPagedQuery**
- **QueriesSearchResult**
- **SearchResultOfCommunityLiveStatus**
- **SearchResultOfContentItemPublicContract**
- **SearchResultOfDestinyEntitySearchResultItem**
- **SearchResultOfFireteamResponse**
- **SearchResultOfFireteamSummary**
- **SearchResultOfGroupBan**
- **SearchResultOfGroupMember**
- **SearchResultOfGroupMemberApplication**
- **SearchResultOfGroupMembership**
- **SearchResultOfGroupPotentialMembership**
- **SearchResultOfGroupV2Card**
- **SearchResultOfPostResponse**
- **SearchResultOfTrendingEntry**
- **SingleComponentResponseOfDestinyCharacterActivitiesComponent**
- **SingleComponentResponseOfDestinyCharacterComponent**
- **SingleComponentResponseOfDestinyCharacterProgressionComponent**
- **SingleComponentResponseOfDestinyCharacterRecordsComponent**
- **SingleComponentResponseOfDestinyCharacterRenderComponent**
- **SingleComponentResponseOfDestinyCollectiblesComponent**
- **SingleComponentResponseOfDestinyCurrenciesComponent**
- **SingleComponentResponseOfDestinyInventoryComponent**
- **SingleComponentResponseOfDestinyItemComponent**
- **SingleComponentResponseOfDestinyItemInstanceComponent**
- **SingleComponentResponseOfDestinyItemObjectivesComponent**
- **SingleComponentResponseOfDestinyItemPerksComponent**
- **SingleComponentResponseOfDestinyItemPlugObjectivesComponent**
- **SingleComponentResponseOfDestinyItemRenderComponent**
- **SingleComponentResponseOfDestinyItemReusablePlugsComponent**
- **SingleComponentResponseOfDestinyItemSocketsComponent**
- **SingleComponentResponseOfDestinyItemStatsComponent**
- **SingleComponentResponseOfDestinyItemTalentGridComponent**
- **SingleComponentResponseOfDestinyKiosksComponent**
- **SingleComponentResponseOfDestinyPlatformSilverComponent**
- **SingleComponentResponseOfDestinyPlugSetsComponent**
- **SingleComponentResponseOfDestinyPresentationNodesComponent**
- **SingleComponentResponseOfDestinyProfileCollectiblesComponent**
- **SingleComponentResponseOfDestinyProfileComponent**
- **SingleComponentResponseOfDestinyProfileProgressionComponent**
- **SingleComponentResponseOfDestinyProfileRecordsComponent**
- **SingleComponentResponseOfDestinyProfileTransitoryComponent**
- **SingleComponentResponseOfDestinyVendorCategoriesComponent**
- **SingleComponentResponseOfDestinyVendorComponent**
- **SingleComponentResponseOfDestinyVendorGroupComponent**
- **SingleComponentResponseOfDestinyVendorReceiptsComponent**
- **StreamInfo**
- **TagsModelsContractsTagResponse**
- **TrendingTrendingCategories**
- **TrendingTrendingCategory**
- **TrendingTrendingDetail**
- **TrendingTrendingEntry**
- **TrendingTrendingEntryCommunityCreation**
- **TrendingTrendingEntryCommunityStream**
- **TrendingTrendingEntryDestinyActivity**
- **TrendingTrendingEntryDestinyItem**
- **TrendingTrendingEntryDestinyRitual**
- **TrendingTrendingEntryNews**
- **TrendingTrendingEntrySupportArticle**
- **TrendingTrendingEntryType**
- **UserCrossSaveUserMembership**
- **UserEMailSettingLocalization**
- **UserEMailSettingSubscriptionLocalization**
- **UserEmailOptInDefinition**
- **UserEmailSettings**
- **UserEmailSubscriptionDefinition**
- **UserEmailViewDefinition**
- **UserEmailViewDefinitionSetting**
- **UserGeneralUser**
- **UserHardLinkedUserMembership**
- **UserOptInFlags**
- **UserUserInfoCard**
- **UserUserMembership**
- **UserUserMembershipData**
- **UserUserToUserContext**

## Requests

- **BungieNetAPI.App**
	- **AppGetApplicationApiUsage**: GET `/app/apiusage/{applicationid}/`
	- **AppGetBungieApplications**: GET `/app/firstparty/`
- **BungieNetAPI.CommunityContent**
	- **CommunityContentGetCommunityContent**: GET `/communitycontent/get/{sort}/{mediafilter}/{page}/`
	- **CommunityContentGetCommunityLiveStatuses**: GET `/communitycontent/live/all/{partnershiptype}/{sort}/{page}/`
	- **CommunityContentGetCommunityLiveStatusesForClanmates**: GET `/communitycontent/live/clan/{partnershiptype}/{sort}/{page}/`
	- **CommunityContentGetCommunityLiveStatusesForFriends**: GET `/communitycontent/live/friends/{partnershiptype}/{sort}/{page}/`
	- **CommunityContentGetFeaturedCommunityLiveStatuses**: GET `/communitycontent/live/featured/{partnershiptype}/{sort}/{page}/`
	- **CommunityContentGetStreamingStatusForMember**: GET `/communitycontent/live/users/{partnershiptype}/{membershiptype}/{membershipid}/`
- **BungieNetAPI.Content**
	- **ContentGetContentById**: GET `/content/getcontentbyid/{id}/{locale}/`
	- **ContentGetContentByTagAndType**: GET `/content/getcontentbytagandtype/{tag}/{type}/{locale}/`
	- **ContentGetContentType**: GET `/content/getcontenttype/{type}/`
	- **ContentSearchContentByTagAndType**: GET `/content/searchcontentbytagandtype/{tag}/{type}/{locale}/`
	- **ContentSearchContentWithText**: GET `/content/search/{locale}/`
	- **ContentSearchHelpArticles**: GET `/content/searchhelparticles/{searchtext}/{size}`
- **BungieNetAPI.Core**
	- **GetAvailableLocales**: GET `/getavailablelocales/`
	- **GetCommonSettings**: GET `/settings/`
	- **GetGlobalAlerts**: GET `/globalalerts/`
- **BungieNetAPI.Destiny2**
	- **Destiny2AwaGetActionToken**: GET `/destiny2/awa/getactiontoken/{correlationid}/`
	- **Destiny2AwaInitializeRequest**: POST `/destiny2/awa/initialize/`
	- **Destiny2AwaProvideAuthorizationResult**: POST `/destiny2/awa/awaprovideauthorizationresult/`
	- **Destiny2EquipItem**: POST `/destiny2/actions/items/equipitem/`
	- **Destiny2EquipItems**: POST `/destiny2/actions/items/equipitems/`
	- **Destiny2GetActivityHistory**: GET `/destiny2/{membershiptype}/account/{destinymembershipid}/character/{characterid}/stats/activities/`
	- **Destiny2GetCharacter**: GET `/destiny2/{membershiptype}/profile/{destinymembershipid}/character/{characterid}/`
	- **Destiny2GetClanAggregateStats**: GET `/destiny2/stats/aggregateclanstats/{groupid}/`
	- **Destiny2GetClanLeaderboards**: GET `/destiny2/stats/leaderboards/clans/{groupid}/`
	- **Destiny2GetClanWeeklyRewardState**: GET `/destiny2/clan/{groupid}/weeklyrewardstate/`
	- **Destiny2GetCollectibleNodeDetails**: GET `/destiny2/{membershiptype}/profile/{destinymembershipid}/character/{characterid}/collectibles/{collectiblepresentationnodehash}/`
	- **Destiny2GetDestinyAggregateActivityStats**: GET `/destiny2/{membershiptype}/account/{destinymembershipid}/character/{characterid}/stats/aggregateactivitystats/`
	- **Destiny2GetDestinyEntityDefinition**: GET `/destiny2/manifest/{entitytype}/{hashidentifier}/`
	- **Destiny2GetDestinyManifest**: GET `/destiny2/manifest/`
	- **Destiny2GetHistoricalStats**: GET `/destiny2/{membershiptype}/account/{destinymembershipid}/character/{characterid}/stats/`
	- **Destiny2GetHistoricalStatsDefinition**: GET `/destiny2/stats/definition/`
	- **Destiny2GetHistoricalStatsForAccount**: GET `/destiny2/{membershiptype}/account/{destinymembershipid}/stats/`
	- **Destiny2GetItem**: GET `/destiny2/{membershiptype}/profile/{destinymembershipid}/item/{iteminstanceid}/`
	- **Destiny2GetLeaderboards**: GET `/destiny2/{membershiptype}/account/{destinymembershipid}/stats/leaderboards/`
	- **Destiny2GetLeaderboardsForCharacter**: GET `/destiny2/stats/leaderboards/{membershiptype}/{destinymembershipid}/{characterid}/`
	- **Destiny2GetLinkedProfiles**: GET `/destiny2/{membershiptype}/profile/{membershipid}/linkedprofiles/`
	- **Destiny2GetPostGameCarnageReport**: GET `/destiny2/stats/postgamecarnagereport/{activityid}/`
	- **Destiny2GetProfile**: GET `/destiny2/{membershiptype}/profile/{destinymembershipid}/`
	- **Destiny2GetPublicMilestoneContent**: GET `/destiny2/milestones/{milestonehash}/content/`
	- **Destiny2GetPublicMilestones**: GET `/destiny2/milestones/`
	- **Destiny2GetPublicVendors**: GET `/destiny2//vendors/`
	- **Destiny2GetUniqueWeaponHistory**: GET `/destiny2/{membershiptype}/account/{destinymembershipid}/character/{characterid}/stats/uniqueweapons/`
	- **Destiny2GetVendor**: GET `/destiny2/{membershiptype}/profile/{destinymembershipid}/character/{characterid}/vendors/{vendorhash}/`
	- **Destiny2GetVendors**: GET `/destiny2/{membershiptype}/profile/{destinymembershipid}/character/{characterid}/vendors/`
	- **Destiny2InsertSocketPlug**: POST `/destiny2/actions/items/insertsocketplug/`
	- **Destiny2PullFromPostmaster**: POST `/destiny2/actions/items/pullfrompostmaster/`
	- **Destiny2ReportOffensivePostGameCarnageReportPlayer**: POST `/destiny2/stats/postgamecarnagereport/{activityid}/report/`
	- **Destiny2SearchDestinyEntities**: GET `/destiny2/armory/search/{type}/{searchterm}/`
	- **Destiny2SearchDestinyPlayer**: GET `/destiny2/searchdestinyplayer/{membershiptype}/{displayname}/`
	- **Destiny2SetItemLockState**: POST `/destiny2/actions/items/setlockstate/`
	- **Destiny2TransferItem**: POST `/destiny2/actions/items/transferitem/`
- **BungieNetAPI.Fireteam**
	- **FireteamGetActivePrivateClanFireteamCount**: GET `/fireteam/clan/{groupid}/activecount/`
	- **FireteamGetAvailableClanFireteams**: GET `/fireteam/clan/{groupid}/available/{platform}/{activitytype}/{daterange}/{slotfilter}/{publiconly}/{page}/`
	- **FireteamGetClanFireteam**: GET `/fireteam/clan/{groupid}/summary/{fireteamid}/`
	- **FireteamGetMyClanFireteams**: GET `/fireteam/clan/{groupid}/my/{platform}/{includeclosed}/{page}/`
	- **FireteamSearchPublicAvailableClanFireteams**: GET `/fireteam/search/available/{platform}/{activitytype}/{daterange}/{slotfilter}/{page}/`
- **BungieNetAPI.Forum**
	- **ForumGetCoreTopicsPaged**: GET `/forum/getcoretopicspaged/{page}/{sort}/{quickdate}/{categoryfilter}/`
	- **ForumGetForumTagSuggestions**: GET `/forum/getforumtagsuggestions/`
	- **ForumGetPoll**: GET `/forum/poll/{topicid}/`
	- **ForumGetPostAndParent**: GET `/forum/getpostandparent/{childpostid}/`
	- **ForumGetPostAndParentAwaitingApproval**: GET `/forum/getpostandparentawaitingapproval/{childpostid}/`
	- **ForumGetPostsThreadedPaged**: GET `/forum/getpoststhreadedpaged/{parentpostid}/{page}/{pagesize}/{replysize}/{getparentpost}/{rootthreadmode}/{sortmode}/`
	- **ForumGetPostsThreadedPagedFromChild**: GET `/forum/getpoststhreadedpagedfromchild/{childpostid}/{page}/{pagesize}/{replysize}/{rootthreadmode}/{sortmode}/`
	- **ForumGetRecruitmentThreadSummaries**: POST `/forum/recruit/summaries/`
	- **ForumGetTopicForContent**: GET `/forum/gettopicforcontent/{contentid}/`
	- **ForumGetTopicsPaged**: GET `/forum/gettopicspaged/{page}/{pagesize}/{group}/{sort}/{quickdate}/{categoryfilter}/`
- **BungieNetAPI.GroupV2**
	- **GroupV2AbdicateFoundership**: POST `/groupv2/{groupid}/admin/abdicatefoundership/{membershiptype}/{founderidnew}/`
	- **GroupV2AddOptionalConversation**: POST `/groupv2/{groupid}/optionalconversations/add/`
	- **GroupV2ApproveAllPending**: POST `/groupv2/{groupid}/members/approveall/`
	- **GroupV2ApprovePending**: POST `/groupv2/{groupid}/members/approve/{membershiptype}/{membershipid}/`
	- **GroupV2ApprovePendingForList**: POST `/groupv2/{groupid}/members/approvelist/`
	- **GroupV2BanMember**: POST `/groupv2/{groupid}/members/{membershiptype}/{membershipid}/ban/`
	- **GroupV2DenyAllPending**: POST `/groupv2/{groupid}/members/denyall/`
	- **GroupV2DenyPendingForList**: POST `/groupv2/{groupid}/members/denylist/`
	- **GroupV2EditClanBanner**: POST `/groupv2/{groupid}/editclanbanner/`
	- **GroupV2EditFounderOptions**: POST `/groupv2/{groupid}/editfounderoptions/`
	- **GroupV2EditGroup**: POST `/groupv2/{groupid}/edit/`
	- **GroupV2EditGroupMembership**: POST `/groupv2/{groupid}/members/{membershiptype}/{membershipid}/setmembershiptype/{membertype}/`
	- **GroupV2EditOptionalConversation**: POST `/groupv2/{groupid}/optionalconversations/edit/{conversationid}/`
	- **GroupV2GetAdminsAndFounderOfGroup**: GET `/groupv2/{groupid}/adminsandfounder/`
	- **GroupV2GetAvailableAvatars**: GET `/groupv2/getavailableavatars/`
	- **GroupV2GetAvailableThemes**: GET `/groupv2/getavailablethemes/`
	- **GroupV2GetBannedMembersOfGroup**: GET `/groupv2/{groupid}/banned/`
	- **GroupV2GetGroup**: GET `/groupv2/{groupid}/`
	- **GroupV2GetGroupByName**: GET `/groupv2/name/{groupname}/{grouptype}/`
	- **GroupV2GetGroupByNameV2**: POST `/groupv2/namev2/`
	- **GroupV2GetGroupOptionalConversations**: GET `/groupv2/{groupid}/optionalconversations/`
	- **GroupV2GetGroupsForMember**: GET `/groupv2/user/{membershiptype}/{membershipid}/{filter}/{grouptype}/`
	- **GroupV2GetInvitedIndividuals**: GET `/groupv2/{groupid}/members/invitedindividuals/`
	- **GroupV2GetMembersOfGroup**: GET `/groupv2/{groupid}/members/`
	- **GroupV2GetPendingMemberships**: GET `/groupv2/{groupid}/members/pending/`
	- **GroupV2GetPotentialGroupsForMember**: GET `/groupv2/user/potential/{membershiptype}/{membershipid}/{filter}/{grouptype}/`
	- **GroupV2GetRecommendedGroups**: POST `/groupv2/recommended/{grouptype}/{createdaterange}/`
	- **GroupV2GetUserClanInviteSetting**: GET `/groupv2/getuserclaninvitesetting/{mtype}/`
	- **GroupV2GroupSearch**: POST `/groupv2/search/`
	- **GroupV2IndividualGroupInvite**: POST `/groupv2/{groupid}/members/individualinvite/{membershiptype}/{membershipid}/`
	- **GroupV2IndividualGroupInviteCancel**: POST `/groupv2/{groupid}/members/individualinvitecancel/{membershiptype}/{membershipid}/`
	- **GroupV2KickMember**: POST `/groupv2/{groupid}/members/{membershiptype}/{membershipid}/kick/`
	- **GroupV2RecoverGroupForFounder**: GET `/groupv2/recover/{membershiptype}/{membershipid}/{grouptype}/`
	- **GroupV2UnbanMember**: POST `/groupv2/{groupid}/members/{membershiptype}/{membershipid}/unban/`
- **BungieNetAPI.Preview**
	- **Destiny2GetClanAggregateStats**: GET `/destiny2/stats/aggregateclanstats/{groupid}/`
	- **Destiny2GetClanLeaderboards**: GET `/destiny2/stats/leaderboards/clans/{groupid}/`
	- **Destiny2GetLeaderboards**: GET `/destiny2/{membershiptype}/account/{destinymembershipid}/stats/leaderboards/`
	- **Destiny2GetLeaderboardsForCharacter**: GET `/destiny2/stats/leaderboards/{membershiptype}/{destinymembershipid}/{characterid}/`
	- **Destiny2GetPublicVendors**: GET `/destiny2//vendors/`
	- **Destiny2InsertSocketPlug**: POST `/destiny2/actions/items/insertsocketplug/`
- **BungieNetAPI.Trending**
	- **TrendingGetTrendingCategories**: GET `/trending/categories/`
	- **TrendingGetTrendingCategory**: GET `/trending/categories/{categoryid}/{pagenumber}/`
	- **TrendingGetTrendingEntryDetail**: GET `/trending/details/{trendingentrytype}/{identifier}/`
- **BungieNetAPI.User**
	- **UserGetAvailableThemes**: GET `/user/getavailablethemes/`
	- **UserGetBungieNetUserById**: GET `/user/getbungienetuserbyid/{id}/`
	- **UserGetMembershipDataById**: GET `/user/getmembershipsbyid/{membershipid}/{membershiptype}/`
	- **UserGetMembershipDataForCurrentUser**: GET `/user/getmembershipsforcurrentuser/`
	- **UserGetMembershipFromHardLinkedCredential**: GET `/user/getmembershipfromhardlinkedcredential/{crtype}/{credential}/`
	- **UserGetPartnerships**: GET `/user/{membershipid}/partnerships/`
	- **UserSearchUsers**: GET `/user/searchusers/`
