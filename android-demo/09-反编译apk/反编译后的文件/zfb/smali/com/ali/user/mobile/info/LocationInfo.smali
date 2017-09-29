.class public Lcom/ali/user/mobile/info/LocationInfo;
.super Ljava/lang/Object;
.source "LocationInfo.java"


# static fields
.field private static a:Lcom/ali/user/mobile/info/LocationInfo;

.field private static b:Ljava/lang/Object;


# instance fields
.field private c:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/LocationInfo;->b:Ljava/lang/Object;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static getInstance()Lcom/ali/user/mobile/info/LocationInfo;
    .locals 2

    .prologue
    .line 23
    sget-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    if-nez v0, :cond_1

    .line 24
    sget-object v1, Lcom/ali/user/mobile/info/LocationInfo;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 25
    :try_start_0
    sget-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    if-nez v0, :cond_0

    .line 26
    new-instance v0, Lcom/ali/user/mobile/info/LocationInfo;

    invoke-direct {v0}, Lcom/ali/user/mobile/info/LocationInfo;-><init>()V

    sput-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    :cond_1
    sget-object v0, Lcom/ali/user/mobile/info/LocationInfo;->a:Lcom/ali/user/mobile/info/LocationInfo;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public getCellId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 44
    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 45
    const-string/jumbo v0, ""

    .line 62
    :goto_0
    return-object v0

    .line 48
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    .line 51
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 53
    :cond_1
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_2

    .line 54
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 55
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 58
    :catch_0
    move-exception v0

    .line 59
    const-string/jumbo v1, "LocationInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMcc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x3

    .line 90
    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 91
    const-string/jumbo v0, ""

    .line 97
    :goto_0
    return-object v0

    .line 93
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    .line 94
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 95
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 97
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getMnc()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x5

    .line 101
    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.READ_PHONE_STATE"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 102
    const-string/jumbo v0, ""

    .line 108
    :goto_0
    return-object v0

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 105
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v1, v2, :cond_1

    .line 106
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 108
    :cond_1
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public getTelLac()Ljava/lang/String;
    .locals 3

    .prologue
    .line 66
    invoke-static {}, Lcom/ali/user/mobile/AliUserInit;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/content/PermissionChecker;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const-string/jumbo v0, ""

    .line 86
    :goto_0
    return-object v0

    .line 70
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    instance-of v1, v0, Landroid/telephony/gsm/GsmCellLocation;

    if-eqz v1, :cond_1

    .line 74
    check-cast v0, Landroid/telephony/gsm/GsmCellLocation;

    .line 75
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 76
    :cond_1
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v1, :cond_2

    .line 77
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 83
    const-string/jumbo v1, "LocationInfo"

    const-string/jumbo v2, ""

    invoke-static {v1, v2, v0}, Lcom/ali/user/mobile/log/AliUserLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    :cond_2
    const-string/jumbo v0, ""

    goto :goto_0
.end method

.method public init(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 39
    .line 40
    const-string/jumbo v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 39
    iput-object v0, p0, Lcom/ali/user/mobile/info/LocationInfo;->c:Landroid/telephony/TelephonyManager;

    .line 41
    return-void
.end method
