/* Defines the product entity */
export interface IDevice {
    DeviceId: string;
    StagedManifestIdList: string;
    PendingManifestId: string;
    PendingTimeStamp: string;
    ManifestIdList: number;
    DeviceStatus: number;
    Aid: string;
    DKiIndex: string;
    Sha: string;
    DefaultPayload: string;
}