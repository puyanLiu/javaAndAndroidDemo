.class public Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;
.super Lcom/alipay/mobile/framework/service/LBSInfoService;
.source "LBSInfoServiceImpl.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private LAST_CHECKIN_TIME:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mContinuousListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;",
            "Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;",
            ">;"
        }
    .end annotation
.end field

.field private mTeleManager:Landroid/telephony/TelephonyManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

.field private userCheckInResponse:Lcom/alipay/mobilelbs/rpc/checkin/resp/UserCheckInResponse;

.field private userCheckInService:Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

.field private userIpLocateRequest:Lcom/alipay/mobilelbs/rpc/locate/req/IpLocateRequest;

.field private userLocateService:Lcom/alipay/mobilelbs/rpc/locate/LocateService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/alipay/mobile/framework/service/LBSInfoService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/LBSInfoService;-><init>()V

    .line 63
    const-string/jumbo v0, "lastcheckintime"

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->LAST_CHECKIN_TIME:Ljava/lang/String;

    .line 50
    return-void
.end method

.method static synthetic access$0(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 1

    .prologue
    .line 110
    invoke-direct {p0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildGSMInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildCDMAInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Ljava/util/List;
    .locals 1

    .prologue
    .line 216
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildWifiInfo()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInService:Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    return-object v0
.end method

.method static synthetic access$6(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    return-object v0
.end method

.method private buildCDMAInfo()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 200
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 201
    if-eqz v0, :cond_0

    instance-of v2, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v2, :cond_0

    .line 202
    new-instance v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;

    invoke-direct {v2}, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;-><init>()V

    .line 203
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 204
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v3

    iput v3, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->bsid:I

    .line 205
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    iput v3, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->nid:I

    .line 206
    const/4 v3, -0x1

    iput v3, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->rssi:I

    .line 207
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v0

    iput v0, v2, Lcom/alipay/mobilelbs/common/service/facade/vo/CDMAInfo;->sid:I

    .line 208
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_0
    return-object v1
.end method

.method private buildGSMInfo()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x3

    const/4 v0, 0x0

    .line 154
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 155
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    .line 158
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 159
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v4, 0x5

    if-lt v1, v4, :cond_4

    .line 160
    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 161
    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    move v2, v1

    move v1, v0

    .line 165
    :goto_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    instance-of v4, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v4, :cond_0

    .line 167
    new-instance v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v4}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    .line 168
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 169
    iput v1, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    .line 170
    iput v2, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    .line 171
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v5

    iput v5, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    .line 172
    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    .line 173
    const/4 v0, -0x1

    iput v0, v4, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    .line 174
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 179
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNeighboringCellInfo()Ljava/util/List;

    move-result-object v0

    .line 180
    if-eqz v0, :cond_2

    .line 181
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 194
    :cond_2
    return-object v3

    .line 181
    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/NeighboringCellInfo;

    .line 182
    if-eqz v0, :cond_1

    .line 183
    new-instance v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;

    invoke-direct {v5}, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;-><init>()V

    .line 184
    iput v1, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mnc:I

    .line 185
    iput v2, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->mcc:I

    .line 186
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getLac()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->lac:I

    .line 187
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getCid()I

    move-result v6

    iput v6, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->cid:I

    .line 188
    invoke-virtual {v0}, Landroid/telephony/NeighboringCellInfo;->getRssi()I

    move-result v0

    iput v0, v5, Lcom/alipay/mobilelbs/common/service/facade/vo/GSMInfo;->rssi:I

    .line 189
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move v1, v0

    move v2, v0

    goto :goto_0
.end method

.method private declared-synchronized buildLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 5

    .prologue
    .line 111
    monitor-enter p0

    :try_start_0
    new-instance v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    invoke-direct {v0}, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;-><init>()V

    .line 113
    if-eqz p1, :cond_0

    .line 114
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLatitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 115
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getLongitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 116
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAccuracy()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 117
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getAltitude()D

    move-result-wide v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    .line 118
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getBearing()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    .line 119
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getSpeed()F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D

    .line 120
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    .line 121
    iget-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    const-string/jumbo v2, "time"

    .line 122
    invoke-virtual {p1}, Lcom/alipay/mobile/common/lbs/LBSLocation;->getTime()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 133
    :goto_0
    :try_start_1
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildGSMInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->gsmInfos:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 139
    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildCDMAInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->cdmaInfos:Ljava/util/List;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 145
    :goto_2
    :try_start_3
    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildWifiInfo()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->wifiInfos:Ljava/util/List;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 150
    :goto_3
    monitor-exit p0

    return-object v0

    .line 124
    :cond_0
    const-wide/16 v1, 0x0

    :try_start_4
    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->latitude:D

    .line 125
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->longitude:D

    .line 126
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->accuracy:D

    .line 127
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->altitude:D

    .line 128
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->direction:D

    .line 129
    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->speed:D
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .line 111
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 135
    :catch_0
    move-exception v1

    :try_start_5
    sget-object v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    goto :goto_1

    .line 141
    :catch_1
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    goto :goto_2

    .line 147
    :catch_2
    move-exception v1

    sget-object v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3
.end method

.method private buildWifiInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 217
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 220
    new-instance v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v0}, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    .line 221
    iget-object v2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 222
    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v2

    .line 223
    if-eqz v2, :cond_1

    .line 224
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    .line 225
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    .line 226
    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getRssi()I

    move-result v2

    iput v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    .line 230
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 233
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    .line 234
    if-eqz v0, :cond_0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_2

    .line 243
    :cond_0
    return-object v1

    .line 228
    :cond_1
    const-string/jumbo v2, "no_connected_wifi"

    iput-object v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    iput-object v2, v0, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    goto :goto_0

    .line 235
    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    .line 236
    new-instance v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;

    invoke-direct {v3}, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;-><init>()V

    .line 237
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->mac:Ljava/lang/String;

    .line 238
    iget-object v4, v0, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v4, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->ssid:Ljava/lang/String;

    .line 239
    iget v0, v0, Landroid/net/wifi/ScanResult;->level:I

    iput v0, v3, Lcom/alipay/mobilelbs/common/service/facade/vo/WifiInfo;->rssi:I

    .line 240
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method private getApdid()Ljava/lang/String;
    .locals 1

    .prologue
    .line 364
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getInstance(Landroid/content/Context;)Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk;->getTokenResult()Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;

    move-result-object v0

    .line 365
    if-eqz v0, :cond_0

    .line 366
    iget-object v0, v0, Lcom/alipay/apmobilesecuritysdk/face/APSecuritySdk$TokenResult;->apdid:Ljava/lang/String;

    .line 368
    :goto_0
    return-object v0

    :cond_0
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private getMspTid()Ljava/lang/String;
    .locals 4

    .prologue
    .line 373
    :try_start_0
    const-string/jumbo v0, "com.ali.user.mobile.info.AppInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 374
    const-string/jumbo v1, "getInstance"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 375
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 376
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 378
    const-string/jumbo v2, "getMspTid"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 379
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 380
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 383
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method private uploadLocation(Lcom/alipay/mobilelbs/common/service/facade/vo/Location;)V
    .locals 5

    .prologue
    .line 331
    if-eqz p1, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 332
    iget-object v0, p1, Lcom/alipay/mobilelbs/common/service/facade/vo/Location;->extraInfos:Ljava/util/Map;

    const-string/jumbo v1, "time"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    :cond_0
    invoke-static {}, Lcom/alipay/mobile/common/info/DeviceInfo;->getInstance()Lcom/alipay/mobile/common/info/DeviceInfo;

    move-result-object v1

    .line 335
    invoke-static {}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getInstance()Lcom/alipay/mobile/framework/LauncherApplicationAgent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/LauncherApplicationAgent;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v2, Lcom/alipay/mobile/framework/service/common/RpcService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/common/RpcService;

    .line 336
    const-class v2, Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/framework/service/common/RpcService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInService:Lcom/alipay/mobilelbs/rpc/checkin/UserCheckInService;

    .line 337
    new-instance v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-direct {v0}, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    .line 338
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    const-string/jumbo v2, "Android-wallet"

    iput-object v2, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->appKey:Ljava/lang/String;

    .line 339
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getmDid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->utdid:Ljava/lang/String;

    .line 340
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->getApdid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->apdid:Ljava/lang/String;

    .line 341
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-direct {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->getMspTid()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->mspTid:Ljava/lang/String;

    .line 342
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImei()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->imei:Ljava/lang/String;

    .line 343
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    invoke-virtual {v1}, Lcom/alipay/mobile/common/info/DeviceInfo;->getImsi()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->imsi:Ljava/lang/String;

    .line 344
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->force:Z

    .line 345
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->userCheckInRequest:Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;

    iput-object p1, v0, Lcom/alipay/mobilelbs/rpc/checkin/req/UserCheckInRequest;->location:Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    .line 347
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$1;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 357
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    :goto_0
    return-void

    .line 358
    :catch_0
    move-exception v0

    .line 359
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "LBSInfoServiceImpl.upLoadLocation  "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public getLastKnownLBSInfo()Lcom/alipay/mobilelbs/common/service/facade/vo/Location;
    .locals 2

    .prologue
    .line 105
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    .line 106
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getLastKnownLocation(Landroid/content/Context;)Lcom/alipay/mobile/common/lbs/LBSLocation;

    move-result-object v0

    .line 107
    invoke-direct {p0, v0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->buildLocation(Lcom/alipay/mobile/common/lbs/LBSLocation;)Lcom/alipay/mobilelbs/common/service/facade/vo/Location;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getApplicationContext()Landroid/app/Application;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    .line 249
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    .line 250
    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 249
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mTeleManager:Landroid/telephony/TelephonyManager;

    .line 251
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    .line 252
    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 251
    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 254
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    .line 255
    return-void
.end method

.method protected onDestroy(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 259
    return-void
.end method

.method public removeLBSInfoUpdatesContinuous(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 3

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 102
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;

    .line 99
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->removeUpdatesContinuous(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 101
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public removeUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 79
    return-void
.end method

.method public requestLBSInfoUpdates(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V
    .locals 3

    .prologue
    .line 69
    new-instance v0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;

    invoke-direct {v0, p0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V

    .line 70
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 72
    return-void
.end method

.method public requestLBSInfoUpdatesContinuous(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;JF)V
    .locals 7

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 91
    :goto_0
    return-void

    .line 86
    :cond_0
    new-instance v6, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;

    invoke-direct {v6, p0, p1}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsInfoListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;)V

    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContinuousListenerMap:Ljava/util/Map;

    invoke-interface {v0, p1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    .line 90
    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    move-wide v3, p2

    move v5, p4

    .line 89
    invoke-virtual/range {v0 .. v6}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdatesContinuous(Landroid/content/Context;ZJFLcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    goto :goto_0
.end method

.method public requestLBSInfoUpdatesEnhanceByIP(Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 389
    invoke-static {}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->getInstance()Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;->mContext:Landroid/content/Context;

    .line 390
    new-instance v2, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;

    invoke-direct {v2, p0, p1, p2}, Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl$LbsEnhanceByIPInfoListenerWrapper;-><init>(Lcom/alipay/mobile/framework/service/impl/LBSInfoServiceImpl;Lcom/alipay/mobile/framework/service/LBSInfoService$LBSInfoListener;Ljava/lang/String;)V

    .line 389
    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/common/lbs/LBSLocationManagerProxy;->requestLocationUpdates(Landroid/content/Context;Lcom/alipay/mobile/common/lbs/LBSLocationListener;)V

    .line 391
    return-void
.end method

.method public upLoadLocation()V
    .locals 0

    .prologue
    .line 323
    return-void
.end method
