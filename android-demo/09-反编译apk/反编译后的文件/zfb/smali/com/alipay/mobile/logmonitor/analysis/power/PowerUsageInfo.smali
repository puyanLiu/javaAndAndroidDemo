.class public Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;
.super Ljava/lang/Object;
.source "PowerUsageInfo.java"


# instance fields
.field private a:Lcom/android/internal/app/IBatteryStats;

.field private b:I

.field private c:Lcom/android/internal/os/PowerProfile;

.field private d:Lcom/android/internal/os/BatteryStatsImpl;

.field private e:J

.field private final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private final h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:I

.field private k:F

.field private l:I

.field private m:D

.field private n:D

.field private o:D

.field private p:D

.field private q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    .line 58
    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    .line 60
    iput v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    .line 62
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 107
    iput-object p1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    .line 111
    :try_start_0
    const-string/jumbo v0, "batteryinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    .line 112
    new-instance v0, Lcom/android/internal/os/PowerProfile;

    invoke-direct {v0, p1}, Lcom/android/internal/os/PowerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    .line 114
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 115
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 117
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    .line 119
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "PowerUsageInfo ,uid:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    :goto_0
    return-void

    .line 121
    :catch_0
    move-exception v0

    .line 122
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "getAppPath,exception:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method private a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .locals 4

    .prologue
    .line 869
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v0, p4, v0

    if-lez v0, :cond_0

    .line 870
    iput-wide p4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 871
    :cond_0
    iget-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v0, p4

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    .line 872
    new-instance v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [D

    const/4 v3, 0x0

    aput-wide p4, v2, v3

    invoke-direct {v0, p1, v1, v2}, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 875
    iput-wide p2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->d:J

    .line 877
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 878
    return-object v0
.end method

.method private a(J)V
    .locals 16

    .prologue
    .line 730
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    move-wide/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v2

    const-wide/16 v4, 0x3e8

    div-long v4, v2, v4

    .line 732
    const-wide/16 v2, 0x0

    long-to-double v6, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v9, "screen.on"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double/2addr v6, v2

    .line 735
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v3, "screen.full"

    invoke-virtual {v2, v3}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    .line 737
    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x5

    if-ge v2, v3, :cond_0

    .line 738
    int-to-float v3, v2

    const/high16 v10, 0x3f000000    # 0.5f

    add-float/2addr v3, v10

    float-to-double v10, v3

    mul-double/2addr v10, v8

    const-wide/high16 v12, 0x4014000000000000L    # 5.0

    div-double/2addr v10, v12

    .line 740
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    move-object/from16 v0, p0

    iget v12, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    move-wide/from16 v0, p1

    invoke-virtual {v3, v2, v0, v1, v12}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenBrightnessTime(IJI)J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long/2addr v12, v14

    .line 742
    long-to-double v12, v12

    mul-double/2addr v10, v12

    add-double/2addr v6, v10

    .line 737
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 748
    :cond_0
    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v2

    .line 749
    sget-object v3, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->SCREEN:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object/from16 v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 752
    :goto_1
    return-void

    :catch_0
    move-exception v2

    goto :goto_1
.end method

.method private static a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 851
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 852
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 856
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    .line 857
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    .line 858
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    .line 859
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    .line 860
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 861
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    .line 862
    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 866
    :catch_0
    move-exception v0

    :cond_0
    return-void
.end method

.method private static a(D)Z
    .locals 4

    .prologue
    .line 889
    const-wide/16 v0, 0x0

    sub-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b(J)V
    .locals 12

    .prologue
    .line 821
    const-wide/16 v4, 0x0

    .line 822
    const-wide/16 v2, 0x0

    .line 824
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    .line 825
    :try_start_0
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v6, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v1, v0, p1, p2, v6}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    .line 827
    const-wide/16 v8, 0x3e8

    div-long v8, v6, v8

    long-to-double v8, v8

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v10, "radio.on"

    invoke-virtual {v1, v10, v0}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v10

    mul-double/2addr v8, v10

    add-double/2addr v4, v8

    .line 831
    add-long/2addr v2, v6

    .line 824
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 833
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalScanningTime(JI)J

    move-result-wide v0

    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    .line 835
    const-wide/16 v6, 0x3e8

    div-long/2addr v0, v6

    long-to-double v0, v0

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v7, "radio.scanning"

    invoke-virtual {v6, v7}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    mul-double/2addr v0, v6

    add-double/2addr v4, v0

    .line 839
    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->CELL:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    .line 840
    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-eqz v1, :cond_1

    .line 841
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    const/4 v4, 0x0

    iget v5, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v1, v4, p1, p2, v5}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneSignalStrengthTime(IJI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-double v4, v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    long-to-double v1, v2

    div-double v1, v4, v1

    iput-wide v1, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->p:D
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 846
    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private g()Lcom/android/internal/os/BatteryStatsImpl;
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 253
    .line 256
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    if-nez v0, :cond_0

    move-object v0, v1

    .line 270
    :goto_0
    return-object v0

    .line 259
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0}, Lcom/android/internal/app/IBatteryStats;->getStatistics()[B

    move-result-object v0

    .line 261
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 262
    const/4 v4, 0x0

    array-length v5, v0

    invoke-virtual {v3, v0, v4, v5}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 263
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 264
    sget-object v0, Lcom/android/internal/os/BatteryStatsImpl;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/os/BatteryStatsImpl;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 265
    :try_start_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xa

    if-lt v1, v4, :cond_2

    const/4 v1, 0x1

    :goto_1
    if-eqz v1, :cond_1

    .line 266
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->distributeWorkLocked(I)V

    .line 268
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_2
    move v1, v2

    .line 265
    goto :goto_1

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_0
.end method

.method private h()V
    .locals 73

    .prologue
    .line 282
    :try_start_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    const-string/jumbo v5, "sensor"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/SensorManager;

    .line 283
    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    move/from16 v50, v0

    .line 286
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    invoke-virtual {v5}, Lcom/android/internal/os/PowerProfile;->getNumSpeedSteps()I

    move-result v51

    .line 287
    move/from16 v0, v51

    new-array v0, v0, [D

    move-object/from16 v52, v0

    .line 288
    move/from16 v0, v51

    new-array v0, v0, [J

    move-object/from16 v53, v0

    .line 289
    const/4 v5, 0x0

    :goto_0
    move/from16 v0, v51

    if-ge v5, v0, :cond_0

    .line 290
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v7, "cpu.active"

    invoke-virtual {v6, v7, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;I)D

    move-result-wide v6

    aput-wide v6, v52, v5

    .line 289
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 294
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i()D

    move-result-wide v54

    .line 295
    const-wide/16 v5, 0x0

    cmpg-double v5, v54, v5

    if-gez v5, :cond_2

    .line 658
    :cond_1
    :goto_1
    return-void

    .line 298
    :cond_2
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    move/from16 v0, v50

    invoke-virtual {v5, v6, v7, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J

    move-result-wide v56

    .line 300
    const-wide/16 v7, 0x0

    .line 301
    const/4 v6, 0x0

    .line 302
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsImpl;->getUidStats()Landroid/util/SparseArray;

    move-result-object v58

    .line 303
    invoke-virtual/range {v58 .. v58}, Landroid/util/SparseArray;->size()I

    move-result v59

    .line 306
    const/4 v5, 0x0

    move/from16 v46, v5

    move-object/from16 v47, v6

    move-wide/from16 v48, v7

    :goto_2
    move/from16 v0, v46

    move/from16 v1, v59

    if-ge v0, v1, :cond_22

    .line 307
    move-object/from16 v0, v58

    move/from16 v1, v46

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/BatteryStats$Uid;

    .line 309
    const-wide/16 v8, 0x0

    .line 310
    const-wide/16 v10, 0x0

    .line 311
    const/4 v12, 0x0

    .line 313
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getProcessStats()Ljava/util/Map;

    move-result-object v34

    .line 315
    const-wide/16 v6, 0x0

    .line 316
    const-wide/16 v43, 0x0

    .line 317
    const-wide/16 v21, 0x0

    .line 318
    const-wide/16 v31, 0x0

    .line 319
    const-wide/16 v13, 0x0

    .line 320
    const-wide/16 v27, 0x0

    .line 321
    const-wide/16 v19, 0x0

    .line 322
    const-wide/16 v29, 0x0

    .line 323
    const-wide/16 v23, 0x0

    .line 324
    const-wide/16 v17, 0x0

    .line 325
    const-wide/16 v15, 0x0

    .line 327
    const-string/jumbo v35, ""

    .line 328
    const-wide/16 v25, 0x0

    .line 329
    new-instance v60, Ljava/lang/StringBuilder;

    invoke-direct/range {v60 .. v60}, Ljava/lang/StringBuilder;-><init>()V

    .line 331
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v33

    move-object/from16 v0, p0

    iget v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    move/from16 v36, v0

    move/from16 v0, v33

    move/from16 v1, v36

    if-ne v0, v1, :cond_4

    const/16 v33, 0x1

    move/from16 v45, v33

    .line 333
    :goto_3
    if-eqz v45, :cond_3

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    move-object/from16 v33, v0

    invoke-virtual/range {v33 .. v33}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v33

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v36

    move-object/from16 v0, v33

    move/from16 v1, v36

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getNameForUid(I)Ljava/lang/String;

    move-result-object v33

    .line 335
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v36

    const-string/jumbo v37, "PowerUsageInfo"

    new-instance v38, Ljava/lang/StringBuilder;

    const-string/jumbo v39, "############UID="

    invoke-direct/range {v38 .. v39}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v39

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v38

    const-string/jumbo v39, ",NAME="

    invoke-virtual/range {v38 .. v39}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-string/jumbo v38, ", Battery Real Time="

    move-object/from16 v0, v33

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v33

    const-wide/16 v38, 0x3e8

    div-long v38, v56, v38

    move-object/from16 v0, v33

    move-wide/from16 v1, v38

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v33

    invoke-virtual/range {v33 .. v33}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v33

    move-object/from16 v0, v36

    move-object/from16 v1, v37

    move-object/from16 v2, v33

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    :cond_3
    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->size()I

    move-result v33

    if-lez v33, :cond_b

    .line 340
    invoke-interface/range {v34 .. v34}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v33

    invoke-interface/range {v33 .. v33}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v41

    move-wide/from16 v33, v6

    move-wide/from16 v36, v8

    :goto_4
    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-interface/range {v41 .. v41}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 342
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Proc;

    .line 344
    move/from16 v0, v50

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Proc;->getUserTime(I)J

    move-result-wide v8

    .line 346
    move/from16 v0, v50

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Proc;->getSystemTime(I)J

    move-result-wide v38

    .line 348
    move/from16 v0, v50

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Uid$Proc;->getForegroundTime(I)J

    move-result-wide v61

    .line 350
    const-wide/16 v63, 0xa

    mul-long v61, v61, v63

    add-long v43, v43, v61

    .line 351
    add-long v8, v8, v38

    const-wide/16 v38, 0xa

    mul-long v61, v8, v38

    .line 354
    const/4 v9, 0x0

    .line 355
    const/4 v8, 0x0

    move/from16 v65, v8

    move v8, v9

    move/from16 v9, v65

    :goto_5
    move/from16 v0, v51

    if-ge v9, v0, :cond_5

    .line 356
    move/from16 v0, v50

    invoke-virtual {v7, v9, v0}, Landroid/os/BatteryStats$Uid$Proc;->getTimeAtCpuSpeedStep(II)J

    move-result-wide v38

    aput-wide v38, v53, v9

    .line 357
    int-to-long v0, v8

    move-wide/from16 v38, v0

    aget-wide v63, v53, v9

    add-long v38, v38, v63

    move-wide/from16 v0, v38

    long-to-int v0, v0

    move/from16 v38, v0

    .line 355
    add-int/lit8 v8, v9, 0x1

    move v9, v8

    move/from16 v8, v38

    goto :goto_5

    .line 331
    :cond_4
    const/16 v33, 0x0

    move/from16 v45, v33

    goto/16 :goto_3

    .line 359
    :cond_5
    if-nez v8, :cond_2d

    .line 360
    const/4 v7, 0x1

    .line 363
    :goto_6
    const-wide/16 v38, 0x0

    .line 364
    const/4 v8, 0x0

    move/from16 v65, v8

    move-wide/from16 v8, v38

    move/from16 v38, v65

    :goto_7
    move/from16 v0, v38

    move/from16 v1, v51

    if-ge v0, v1, :cond_6

    .line 365
    aget-wide v39, v53, v38

    move-wide/from16 v0, v39

    long-to-double v0, v0

    move-wide/from16 v39, v0

    int-to-double v0, v7

    move-wide/from16 v63, v0

    div-double v39, v39, v63

    .line 366
    move-wide/from16 v0, v61

    long-to-double v0, v0

    move-wide/from16 v63, v0

    mul-double v39, v39, v63

    aget-wide v63, v52, v38

    mul-double v39, v39, v63

    add-double v39, v39, v8

    .line 364
    add-int/lit8 v8, v38, 0x1

    move/from16 v38, v8

    move-wide/from16 v8, v39

    goto :goto_7

    .line 368
    :cond_6
    add-long v33, v33, v61

    .line 370
    if-eqz v45, :cond_7

    const-wide/16 v38, 0x0

    cmpl-double v7, v8, v38

    if-eqz v7, :cond_7

    .line 372
    const-string/jumbo v7, "process:%s  power:%.2f time:%d"

    const/16 v38, 0x3

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x1

    const-wide v63, 0x408f400000000000L    # 1000.0

    div-double v63, v8, v63

    invoke-static/range {v63 .. v64}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v40

    aput-object v40, v38, v39

    const/16 v39, 0x2

    invoke-static/range {v61 .. v62}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v38

    invoke-static {v7, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 375
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v38

    const-string/jumbo v39, "PowerUsageInfo"

    move-object/from16 v0, v38

    move-object/from16 v1, v39

    invoke-interface {v0, v1, v7}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    const/16 v38, 0x7c

    move-object/from16 v0, v60

    move/from16 v1, v38

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v38

    move-object/from16 v0, v38

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_7
    add-double v36, v36, v8

    .line 383
    if-eqz v12, :cond_8

    const-string/jumbo v7, "*"

    invoke-virtual {v12, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 386
    :cond_8
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide v10, v8

    move-object v12, v6

    goto/16 :goto_4

    .line 387
    :cond_9
    cmpg-double v7, v10, v8

    if-gez v7, :cond_2c

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v38, "*"

    move-object/from16 v0, v38

    invoke-virtual {v7, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_2c

    .line 390
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    move-wide/from16 v65, v8

    move-object v8, v6

    move-wide/from16 v6, v65

    :goto_8
    move-wide v10, v6

    move-object v12, v8

    .line 392
    goto/16 :goto_4

    :cond_a
    move-wide/from16 v6, v33

    move-wide/from16 v8, v36

    .line 396
    :cond_b
    cmp-long v10, v43, v6

    if-lez v10, :cond_2b

    .line 397
    if-eqz v45, :cond_c

    const-wide/16 v10, 0x2710

    add-long/2addr v6, v10

    cmp-long v6, v43, v6

    if-lez v6, :cond_c

    .line 398
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "PowerUsageInfo"

    const-string/jumbo v10, "WARNING! Cputime is more than 10 seconds behind Foreground time"

    invoke-interface {v6, v7, v10}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_c
    move-wide/from16 v41, v43

    .line 404
    :goto_9
    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v33, v8, v6

    .line 405
    if-eqz v45, :cond_2a

    invoke-static/range {v33 .. v34}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v6

    if-nez v6, :cond_2a

    .line 407
    const-string/jumbo v10, "cpu"

    .line 410
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v6

    const-string/jumbo v7, "PowerUsageInfo"

    const-string/jumbo v8, "===========total cpu power=%.2f"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static/range {v33 .. v34}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v12

    aput-object v12, v9, v11

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v8, v33

    .line 414
    :goto_a
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getWakelockStats()Ljava/util/Map;

    move-result-object v6

    .line 415
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v25

    :goto_b
    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface/range {v25 .. v25}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 416
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/BatteryStats$Uid$Wakelock;

    .line 420
    const/4 v11, 0x0

    invoke-virtual {v7, v11}, Landroid/os/BatteryStats$Uid$Wakelock;->getWakeTime(I)Landroid/os/BatteryStats$Timer;

    move-result-object v7

    .line 421
    if-eqz v7, :cond_e

    move-wide/from16 v0, v56

    move/from16 v2, v50

    invoke-virtual {v7, v0, v1, v2}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v11

    .line 422
    :goto_c
    if-eqz v7, :cond_f

    move/from16 v0, v50

    invoke-virtual {v7, v0}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v7

    .line 424
    :goto_d
    if-eqz v45, :cond_d

    .line 425
    const-string/jumbo v26, "wakelock:%s count:%d time:%d"

    const/16 v35, 0x3

    move/from16 v0, v35

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v35, v0

    const/16 v36, 0x0

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v35, v36

    const/4 v6, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v35, v6

    const/4 v6, 0x2

    const-wide/16 v36, 0x3e8

    div-long v36, v11, v36

    invoke-static/range {v36 .. v37}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v35, v6

    move-object/from16 v0, v26

    move-object/from16 v1, v35

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 427
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v7

    const-string/jumbo v26, "PowerUsageInfo"

    move-object/from16 v0, v26

    invoke-interface {v7, v0, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 428
    const/16 v7, 0x7c

    move-object/from16 v0, v60

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 431
    :cond_d
    add-long v6, v21, v11

    move-wide/from16 v21, v6

    .line 432
    goto :goto_b

    .line 421
    :cond_e
    const-wide/16 v11, 0x0

    goto :goto_c

    .line 422
    :cond_f
    const/4 v7, 0x0

    goto :goto_d

    .line 433
    :cond_10
    const-wide/16 v6, 0x3e8

    div-long v61, v21, v6

    .line 434
    add-long v48, v48, v61

    .line 437
    move-wide/from16 v0, v61

    long-to-double v6, v0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v12, "cpu.awake"

    invoke-virtual {v11, v12}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v11

    mul-double/2addr v6, v11

    const-wide v11, 0x408f400000000000L    # 1000.0

    div-double v25, v6, v11

    .line 438
    add-double v21, v33, v25

    .line 440
    if-eqz v45, :cond_29

    invoke-static/range {v25 .. v26}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v6

    if-nez v6, :cond_29

    .line 442
    cmpl-double v6, v25, v8

    if-lez v6, :cond_28

    .line 444
    const-string/jumbo v8, "wakelock"

    move-wide/from16 v6, v25

    .line 447
    :goto_e
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v9

    const-string/jumbo v10, "PowerUsageInfo"

    const-string/jumbo v11, "===========wakelock power=%.2f"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/16 v33, 0x0

    invoke-static/range {v25 .. v26}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v34

    aput-object v34, v12, v33

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    .line 452
    :goto_f
    :try_start_1
    move-wide/from16 v0, v56

    move/from16 v2, v50

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getFullWifiLockTime(JI)J

    move-result-wide v9

    const-wide/16 v11, 0x3e8

    div-long/2addr v9, v11
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 453
    if-eqz v45, :cond_11

    .line 454
    :try_start_2
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v11

    const-string/jumbo v12, "PowerUsageInfo"

    const-string/jumbo v13, "===========wifilock time=%dms"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/16 v33, 0x0

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v34

    aput-object v34, v14, v33

    invoke-static {v13, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v12, v13}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_b

    :cond_11
    move-wide/from16 v39, v9

    .line 462
    :goto_10
    :try_start_3
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Uid;->getTcpBytesReceived(I)J
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    move-result-wide v13

    .line 463
    :try_start_4
    move-object/from16 v0, p0

    iget v9, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v5, v9}, Landroid/os/BatteryStats$Uid;->getTcpBytesSent(I)J
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_8

    move-result-wide v11

    .line 464
    add-long v9, v13, v11

    long-to-double v9, v9

    mul-double v9, v9, v54

    .line 465
    add-double v15, v21, v9

    .line 466
    if-eqz v45, :cond_13

    :try_start_5
    invoke-static {v9, v10}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_9

    move-result v17

    if-nez v17, :cond_13

    .line 468
    cmpl-double v17, v9, v6

    if-lez v17, :cond_12

    .line 470
    :try_start_6
    const-string/jumbo v8, "tcp"
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_a

    move-wide v6, v9

    .line 473
    :cond_12
    :try_start_7
    const-string/jumbo v17, "tcp power:%.2f receive:%d send:%d"

    const/16 v18, 0x3

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    .line 474
    const/16 v18, 0x7c

    move-object/from16 v0, v60

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 475
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v18

    const-string/jumbo v19, "PowerUsageInfo"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v17

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_9

    :cond_13
    move-wide/from16 v33, v11

    move-wide/from16 v35, v13

    move-wide/from16 v37, v9

    move-wide v11, v15

    .line 483
    :goto_11
    :try_start_8
    move-wide/from16 v0, v56

    move/from16 v2, v50

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiRunningTime(JI)J

    move-result-wide v9

    const-wide/16 v13, 0x3e8

    div-long/2addr v9, v13
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2

    .line 484
    long-to-double v13, v9

    :try_start_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v16, "wifi.on"

    invoke-virtual/range {v15 .. v16}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_6

    move-result-wide v15

    mul-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    .line 486
    add-double/2addr v11, v13

    .line 487
    if-eqz v45, :cond_15

    :try_start_a
    invoke-static {v13, v14}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v15

    if-nez v15, :cond_15

    .line 489
    cmpl-double v15, v13, v6

    if-lez v15, :cond_14

    .line 490
    const-string/jumbo v8, "wifi"

    move-wide v6, v13

    .line 494
    :cond_14
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v15

    const-string/jumbo v16, "PowerUsageInfo"

    const-string/jumbo v17, "===========wifi running power=%.2f, running time=%dms"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_7

    :cond_15
    move-wide/from16 v24, v9

    .line 502
    :goto_12
    :try_start_b
    move-wide/from16 v0, v56

    move/from16 v2, v50

    invoke-virtual {v5, v0, v1, v2}, Landroid/os/BatteryStats$Uid;->getWifiScanTime(JI)J

    move-result-wide v9

    const-wide/16 v15, 0x3e8

    div-long/2addr v9, v15
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_3

    .line 503
    long-to-double v15, v9

    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    move-object/from16 v17, v0

    const-string/jumbo v18, "wifi.scan"

    invoke-virtual/range {v17 .. v18}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    mul-double/2addr v13, v15

    const-wide v15, 0x408f400000000000L    # 1000.0

    div-double/2addr v13, v15

    .line 505
    add-double/2addr v11, v13

    .line 506
    if-eqz v45, :cond_17

    invoke-static {v13, v14}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v15

    if-nez v15, :cond_17

    .line 508
    cmpl-double v15, v13, v6

    if-lez v15, :cond_16

    .line 509
    const-string/jumbo v8, "wifiscan"

    move-wide v6, v13

    .line 513
    :cond_16
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v15

    const-string/jumbo v16, "PowerUsageInfo"

    const-string/jumbo v17, "===========wifi scanning power=%.2f, time=%dms"

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v18, v19

    const/16 v19, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v20

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v15 .. v17}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    :cond_17
    move-wide/from16 v19, v6

    move-wide/from16 v22, v9

    move-object/from16 v21, v8

    .line 520
    :goto_13
    const-wide/16 v7, 0x0

    .line 521
    :try_start_d
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getSensorStats()Ljava/util/Map;

    move-result-object v6

    .line 522
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-wide/from16 v9, v29

    move-wide/from16 v17, v31

    :goto_14
    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1a

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    .line 523
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/BatteryStats$Uid$Sensor;

    .line 524
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Sensor;->getHandle()I

    move-result v27

    .line 525
    invoke-virtual {v6}, Landroid/os/BatteryStats$Uid$Sensor;->getSensorTime()Landroid/os/BatteryStats$Timer;

    move-result-object v28

    .line 526
    move-object/from16 v0, v28

    move-wide/from16 v1, v56

    move/from16 v3, v50

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/BatteryStats$Timer;->getTotalTimeLocked(JI)J

    move-result-wide v15

    const-wide/16 v29, 0x3e8

    div-long v15, v15, v29

    .line 528
    move-object/from16 v0, v28

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats$Timer;->getCountLocked(I)I

    move-result v28

    .line 529
    packed-switch v27, :pswitch_data_0

    .line 545
    const/4 v6, -0x1

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v29

    .line 546
    :goto_15
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_19

    .line 548
    invoke-interface/range {v29 .. v29}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/hardware/Sensor;

    .line 550
    new-instance v30, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;

    move-object/from16 v0, v30

    move-object/from16 v1, p0

    invoke-direct {v0, v1, v6}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;Landroid/hardware/Sensor;)V

    .line 551
    if-eqz v6, :cond_18

    invoke-virtual/range {v30 .. v30}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$SensorWrapper;->a()I

    move-result v30

    move/from16 v0, v30

    move/from16 v1, v27

    if-ne v0, v1, :cond_18

    .line 552
    invoke-virtual {v6}, Landroid/hardware/Sensor;->getPower()F

    move-result v13

    float-to-double v13, v13

    .line 553
    long-to-double v0, v15

    move-wide/from16 v30, v0

    mul-double v13, v13, v30

    const-wide v30, 0x408f400000000000L    # 1000.0

    div-double v13, v13, v30

    .line 554
    add-double/2addr v11, v13

    .line 555
    add-double/2addr v7, v13

    .line 556
    add-long/2addr v9, v15

    .line 558
    if-eqz v45, :cond_18

    invoke-static {v13, v14}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v30

    if-nez v30, :cond_18

    .line 559
    const-string/jumbo v30, "sensor %s power:%.2f count:%d time:%dms"

    const/16 v31, 0x4

    move/from16 v0, v31

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v31, v0

    const/16 v32, 0x0

    new-instance v63, Ljava/lang/StringBuilder;

    const-string/jumbo v64, "info: "

    invoke-direct/range {v63 .. v64}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v64

    invoke-virtual/range {v63 .. v64}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v63

    invoke-virtual {v6}, Landroid/hardware/Sensor;->getType()I

    move-result v6

    move-object/from16 v0, v63

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v31, v32

    const/4 v6, 0x1

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v32

    aput-object v32, v31, v6

    const/4 v6, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v32

    aput-object v32, v31, v6

    const/4 v6, 0x3

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v32

    aput-object v32, v31, v6

    invoke-static/range {v30 .. v31}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 561
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v30

    const-string/jumbo v31, "PowerUsageInfo"

    move-object/from16 v0, v30

    move-object/from16 v1, v31

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 562
    const/16 v30, 0x7c

    move-object/from16 v0, v60

    move/from16 v1, v30

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    move-wide/from16 v65, v7

    move-wide/from16 v6, v65

    move-wide/from16 v67, v9

    move-wide/from16 v8, v67

    move-wide/from16 v69, v11

    move-wide/from16 v10, v69

    move-wide/from16 v71, v13

    move-wide/from16 v12, v71

    move-wide/from16 v65, v6

    move-wide/from16 v67, v8

    move-wide/from16 v7, v65

    move-wide/from16 v69, v10

    move-wide/from16 v9, v67

    move-wide/from16 v71, v12

    move-wide/from16 v13, v71

    move-wide/from16 v11, v69

    .line 565
    goto/16 :goto_15

    :catch_0
    move-exception v9

    move-wide v9, v13

    :goto_16
    move-wide/from16 v39, v9

    goto/16 :goto_10

    :catch_1
    move-exception v9

    move-wide/from16 v10, v17

    move-wide/from16 v12, v19

    move-object v14, v8

    move-wide v8, v15

    move-wide/from16 v15, v21

    :goto_17
    move-wide/from16 v33, v8

    move-wide/from16 v35, v10

    move-wide/from16 v37, v12

    move-object v8, v14

    move-wide v11, v15

    goto/16 :goto_11

    :catch_2
    move-exception v9

    move-object v10, v8

    move-wide/from16 v13, v25

    move-wide/from16 v8, v23

    :goto_18
    move-wide/from16 v24, v8

    move-object v8, v10

    goto/16 :goto_12

    :catch_3
    move-exception v9

    move-object v10, v8

    move-wide/from16 v8, v27

    :goto_19
    move-wide/from16 v19, v6

    move-wide/from16 v22, v8

    move-object/from16 v21, v10

    goto/16 :goto_13

    .line 532
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v14, "gps.on"

    invoke-virtual {v13, v14}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v13

    .line 535
    long-to-double v0, v15

    move-wide/from16 v17, v0

    mul-double v13, v13, v17

    const-wide v17, 0x408f400000000000L    # 1000.0

    div-double v13, v13, v17

    .line 536
    add-double/2addr v11, v13

    .line 537
    add-double/2addr v7, v13

    .line 539
    if-eqz v45, :cond_27

    invoke-static {v13, v14}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(D)Z

    move-result v17

    if-nez v17, :cond_27

    .line 540
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v17

    const-string/jumbo v18, "PowerUsageInfo"

    const-string/jumbo v27, "===========gps sensor %s power=%.2f, count=%d, time=%dms"

    const/16 v29, 0x4

    move/from16 v0, v29

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v29, v30

    const/4 v6, 0x1

    invoke-static {v13, v14}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v30

    aput-object v30, v29, v6

    const/4 v6, 0x2

    invoke-static/range {v28 .. v28}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v28

    aput-object v28, v29, v6

    const/4 v6, 0x3

    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v28

    aput-object v28, v29, v6

    move-object/from16 v0, v27

    move-object/from16 v1, v29

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-interface {v0, v1, v6}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    move-wide/from16 v17, v15

    goto/16 :goto_14

    :cond_19
    move-wide v15, v13

    move-wide v13, v11

    move-wide/from16 v11, v17

    :goto_1a
    move-wide/from16 v17, v11

    move-wide v11, v13

    move-wide v13, v15

    .line 571
    goto/16 :goto_14

    .line 573
    :cond_1a
    if-eqz v45, :cond_26

    .line 574
    cmpl-double v6, v7, v13

    if-lez v6, :cond_25

    .line 575
    const-string/jumbo v21, "sensor"

    move-wide/from16 v65, v7

    move-wide/from16 v6, v65

    move-object/from16 v8, v21

    .line 579
    :goto_1b
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v13

    const-string/jumbo v14, "PowerUsageInfo"

    const-string/jumbo v15, "############UID=%d,TOTALPOWER=%.2f"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v19, 0x0

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v16, v19

    const/16 v19, 0x1

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    aput-object v20, v16, v19

    invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    invoke-interface {v13, v14, v15}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 583
    :goto_1c
    const-wide/16 v13, 0x0

    cmpl-double v13, v11, v13

    if-nez v13, :cond_1b

    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v13

    if-nez v13, :cond_24

    .line 584
    :cond_1b
    new-instance v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    sget-object v14, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->APP:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    const/4 v15, 0x1

    new-array v15, v15, [D

    const/16 v16, 0x0

    aput-wide v11, v15, v16

    invoke-direct {v13, v14, v5, v15}, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;-><init>(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;Landroid/os/BatteryStats$Uid;[D)V

    .line 586
    move-wide/from16 v0, v41

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    .line 587
    move-wide/from16 v0, v17

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    .line 588
    move-wide/from16 v0, v24

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    .line 589
    move-wide/from16 v0, v43

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    .line 590
    move-wide/from16 v0, v61

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 591
    move-wide/from16 v0, v35

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->j:J

    .line 592
    move-wide/from16 v0, v33

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->k:J

    .line 593
    move-wide/from16 v0, v39

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->n:J

    .line 594
    move-wide/from16 v0, v37

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->m:D

    .line 595
    move-wide/from16 v0, v22

    iput-wide v0, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    .line 596
    iput-wide v9, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    .line 598
    iput-object v8, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->r:Ljava/lang/String;

    .line 599
    iput-wide v6, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->s:D

    .line 600
    invoke-virtual/range {v60 .. v60}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v13, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->t:Ljava/lang/String;

    .line 604
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    const/16 v7, 0x3f2

    if-ne v6, v7, :cond_1d

    .line 605
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 611
    :goto_1d
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    if-nez v6, :cond_24

    move-object v6, v13

    .line 615
    :goto_1e
    const-wide/16 v7, 0x0

    cmpl-double v7, v11, v7

    if-eqz v7, :cond_1c

    .line 616
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v7

    const/16 v8, 0x3f2

    if-ne v7, v8, :cond_1f

    .line 617
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    add-double/2addr v7, v11

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    .line 306
    :cond_1c
    :goto_1f
    add-int/lit8 v5, v46, 0x1

    move/from16 v46, v5

    move-object/from16 v47, v6

    goto/16 :goto_2

    .line 606
    :cond_1d
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v6

    const/16 v7, 0x3ea

    if-ne v6, v7, :cond_1e

    .line 607
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4

    goto :goto_1d

    .line 654
    :catch_4
    move-exception v4

    .line 655
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v5

    const-string/jumbo v6, "PowerUsageInfo"

    invoke-interface {v5, v6, v4}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 609
    :cond_1e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v6, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1d

    .line 618
    :cond_1f
    invoke-virtual {v5}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v5

    const/16 v7, 0x3ea

    if-ne v5, v7, :cond_20

    .line 619
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    add-double/2addr v7, v11

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    goto :goto_1f

    .line 621
    :cond_20
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v5, v11, v7

    if-lez v5, :cond_21

    .line 622
    move-object/from16 v0, p0

    iput-wide v11, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 623
    :cond_21
    move-object/from16 v0, p0

    iget-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v7, v11

    move-object/from16 v0, p0

    iput-wide v7, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    goto :goto_1f

    .line 631
    :cond_22
    if-eqz v47, :cond_1

    .line 632
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    const-wide/16 v7, 0x3e8

    mul-long/2addr v5, v7

    move/from16 v0, v50

    invoke-virtual {v4, v5, v6, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryUptime(JI)J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 634
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    move/from16 v0, v50

    invoke-virtual {v6, v7, v8, v0}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    add-long v6, v6, v48

    sub-long/2addr v4, v6

    .line 637
    const-wide/16 v6, 0x0

    cmp-long v6, v4, v6

    if-lez v6, :cond_1

    .line 639
    long-to-double v6, v4

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v9, "cpu.awake"

    invoke-virtual {v8, v9}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide v8, 0x408f400000000000L    # 1000.0

    div-double/2addr v6, v8

    .line 645
    move-object/from16 v0, v47

    iget-wide v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    add-long/2addr v4, v8

    move-object/from16 v0, v47

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    .line 646
    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    add-double/2addr v4, v6

    move-object/from16 v0, v47

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    .line 647
    move-object/from16 v0, v47

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->c:[D

    const/4 v5, 0x0

    aget-wide v8, v4, v5

    add-double/2addr v8, v6

    aput-wide v8, v4, v5

    .line 648
    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    cmpl-double v4, v4, v8

    if-lez v4, :cond_23

    .line 649
    move-object/from16 v0, v47

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 651
    :cond_23
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    add-double/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_4

    goto/16 :goto_1

    :catch_5
    move-exception v15

    move-wide/from16 v65, v9

    move-object v10, v8

    move-wide/from16 v8, v65

    goto/16 :goto_19

    :catch_6
    move-exception v13

    move-wide/from16 v13, v25

    move-object/from16 v65, v8

    move-wide/from16 v66, v9

    move-wide/from16 v8, v66

    move-object/from16 v10, v65

    goto/16 :goto_18

    :catch_7
    move-exception v15

    move-wide/from16 v65, v9

    move-object v10, v8

    move-wide/from16 v8, v65

    goto/16 :goto_18

    :catch_8
    move-exception v9

    move-wide v10, v13

    move-wide/from16 v12, v19

    move-object v14, v8

    move-wide v8, v15

    move-wide/from16 v15, v21

    goto/16 :goto_17

    :catch_9
    move-exception v17

    move-wide/from16 v65, v11

    move-wide/from16 v67, v13

    move-wide v12, v9

    move-object v14, v8

    move-wide/from16 v10, v67

    move-wide/from16 v8, v65

    goto/16 :goto_17

    :catch_a
    move-exception v6

    move-wide v6, v9

    move-wide/from16 v65, v11

    move-wide/from16 v67, v13

    move-wide v12, v9

    move-object v14, v8

    move-wide/from16 v10, v67

    move-wide/from16 v8, v65

    goto/16 :goto_17

    :catch_b
    move-exception v11

    goto/16 :goto_16

    :cond_24
    move-object/from16 v6, v47

    goto/16 :goto_1e

    :cond_25
    move-wide/from16 v6, v19

    move-object/from16 v8, v21

    goto/16 :goto_1b

    :cond_26
    move-wide/from16 v6, v19

    move-object/from16 v8, v21

    goto/16 :goto_1c

    :cond_27
    move-wide/from16 v65, v15

    move-wide v15, v13

    move-wide v13, v11

    move-wide/from16 v11, v65

    goto/16 :goto_1a

    :cond_28
    move-wide v6, v8

    move-object v8, v10

    goto/16 :goto_e

    :cond_29
    move-wide v6, v8

    move-object v8, v10

    goto/16 :goto_f

    :cond_2a
    move-wide/from16 v8, v25

    move-object/from16 v10, v35

    goto/16 :goto_a

    :cond_2b
    move-wide/from16 v41, v6

    goto/16 :goto_9

    :cond_2c
    move-wide v6, v10

    move-object v8, v12

    goto/16 :goto_8

    :cond_2d
    move v7, v8

    goto/16 :goto_6

    .line 529
    nop

    :pswitch_data_0
    .packed-switch -0x2710
        :pswitch_0
    .end packed-switch
.end method

.method private i()D
    .locals 14

    .prologue
    .line 663
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "wifi.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v2, 0x40ac200000000000L    # 3600.0

    div-double v2, v0, v2

    .line 669
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    const-wide v4, 0x40ac200000000000L    # 3600.0

    div-double v4, v0, v4

    .line 671
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v7, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v6, v7}, Lcom/android/internal/os/BatteryStatsImpl;->getMobileTcpBytesSent(I)J

    move-result-wide v6

    add-long/2addr v6, v0

    .line 674
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesReceived(I)J

    move-result-wide v0

    iget-object v8, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v8, v9}, Lcom/android/internal/os/BatteryStatsImpl;->getTotalTcpBytesSent(I)J

    move-result-wide v8

    add-long/2addr v0, v8

    sub-long v8, v0, v6

    .line 676
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsImpl;->getRadioDataUptime()J

    move-result-wide v0

    const-wide/16 v10, 0x3e8

    div-long/2addr v0, v10

    .line 677
    const-wide/16 v10, 0x0

    cmp-long v10, v0, v10

    if-eqz v10, :cond_0

    const-wide/16 v10, 0x8

    mul-long/2addr v10, v6

    const-wide/16 v12, 0x3e8

    mul-long/2addr v10, v12

    div-long v0, v10, v0

    .line 680
    :goto_0
    const-wide/16 v10, 0x8

    div-long/2addr v0, v10
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v0, v0

    div-double v0, v4, v0

    .line 681
    const-wide v4, 0x40fe848000000000L    # 125000.0

    div-double/2addr v2, v4

    .line 682
    add-long v4, v8, v6

    const-wide/16 v10, 0x0

    cmp-long v4, v4, v10

    if-eqz v4, :cond_1

    .line 683
    long-to-double v4, v6

    mul-double/2addr v0, v4

    long-to-double v4, v8

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    add-long v2, v6, v8

    long-to-double v2, v2

    div-double/2addr v0, v2

    .line 690
    :goto_1
    return-wide v0

    .line 677
    :cond_0
    const-wide/32 v0, 0x30d40

    goto :goto_0

    .line 687
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 690
    :catch_0
    move-exception v0

    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method


# virtual methods
.method public final a()F
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    return v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 144
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    return v0
.end method

.method public final c()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    if-eqz v0, :cond_0

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "cpuTime--"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|wakelockTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|wifilocktime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->n:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|wifiscanningTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->l:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|gpsTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|wifiRunningTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|sensorTime--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-wide v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->o:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "|drainDetail--"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-object v1, v1, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 161
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final d()Ljava/lang/String;
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    if-eqz v0, :cond_0

    .line 166
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    iget-object v0, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->r:Ljava/lang/String;

    .line 168
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    .locals 1

    .prologue
    .line 172
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    return-object v0
.end method

.method public final f()Z
    .locals 14

    .prologue
    .line 183
    const/4 v6, 0x0

    .line 187
    :try_start_0
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    if-gez v0, :cond_0

    .line 188
    const/4 v0, 0x0

    .line 249
    :goto_0
    return v0

    .line 190
    :cond_0
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    .line 192
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    if-nez v0, :cond_1

    .line 193
    const/4 v0, 0x0

    goto :goto_0

    .line 197
    :cond_1
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->m:D

    .line 198
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    .line 199
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    .line 200
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    .line 201
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e:J

    .line 203
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 204
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 205
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 207
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->i:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v4

    if-eqz v4, :cond_4

    const-string/jumbo v0, "status"

    const/4 v1, -0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    :cond_2
    const/4 v0, 0x1

    move v3, v0

    :goto_1
    const-string/jumbo v0, "plugged"

    const/4 v1, -0x1

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v0, 0x2

    if-ne v1, v0, :cond_9

    const/4 v0, 0x1

    move v2, v0

    :goto_2
    const/4 v0, 0x1

    if-ne v1, v0, :cond_a

    const/4 v0, 0x1

    move v1, v0

    :goto_3
    const-string/jumbo v0, "level"

    const/4 v5, -0x1

    invoke-virtual {v4, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v0, "scale"

    const/4 v7, -0x1

    invoke-virtual {v4, v0, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/high16 v0, -0x40800000    # -1.0f

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    const/4 v7, -0x1

    if-eq v4, v7, :cond_3

    int-to-float v0, v5

    int-to-float v4, v4

    div-float/2addr v0, v4

    :cond_3
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v4

    const-string/jumbo v5, "monitor"

    const-string/jumbo v7, "isCharging=%b, usbCharge=%b, acCharge=%b, percent=%f"

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v8, v9

    const/4 v3, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v8, v3

    const/4 v2, 0x2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v8, v2

    const/4 v1, 0x3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v8, v1

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 208
    :cond_4
    invoke-direct {p0}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h()V

    .line 210
    iget v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long/2addr v1, v3

    iget-object v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v3, v1, v2, v0}, Lcom/android/internal/os/BatteryStatsImpl;->computeBatteryRealtime(JI)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    move-result-wide v7

    :try_start_1
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getPhoneOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "radio.active"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    long-to-double v4, v2

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v0, v4

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->PHONE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_6

    :goto_4
    :try_start_2
    invoke-direct {p0, v7, v8}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(J)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getWifiOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v4, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getGlobalWifiRunningTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iget-wide v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->e:J

    sub-long v2, v0, v2

    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-gez v0, :cond_5

    const-wide/16 v2, 0x0

    :cond_5
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "wifi.on"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v10, "wifi.active"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4024000000000000L    # 10.0

    div-double v11, v9, v11

    cmpl-double v11, v0, v11

    if-lez v11, :cond_6

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    div-double v0, v9, v0

    :cond_6
    const-wide/16 v9, 0x0

    mul-long/2addr v4, v9

    long-to-double v4, v4

    mul-double/2addr v4, v0

    long-to-double v9, v2

    mul-double/2addr v0, v9

    add-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v0, v4

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->WIFI:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    iget-wide v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->o:D

    add-double/2addr v4, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->g:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_5

    :goto_5
    :try_start_4
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothOnTime(JI)J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    long-to-double v0, v2

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "bluetooth.on"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v4

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsImpl;->getBluetoothPingCount()I

    move-result v4

    int-to-double v4, v4

    iget-object v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v10, "bluetooth.at"

    invoke-virtual {v9, v10}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v9

    mul-double/2addr v4, v9

    const-wide v9, 0x408f400000000000L    # 1000.0

    div-double/2addr v4, v9

    add-double/2addr v4, v0

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->BLUETOOTH:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    iget-wide v9, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->p:D

    add-double/2addr v4, v9

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->h:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;Ljava/util/List;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    :goto_6
    :try_start_5
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->d:Lcom/android/internal/os/BatteryStatsImpl;

    iget v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b:I

    invoke-virtual {v0, v7, v8, v1}, Lcom/android/internal/os/BatteryStatsImpl;->getScreenOnTime(JI)J

    move-result-wide v0

    sub-long v0, v7, v0

    const-wide/16 v2, 0x3e8

    div-long v2, v0, v2

    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v1, "cpu.idle"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v0

    iget-object v4, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->c:Lcom/android/internal/os/PowerProfile;

    const-string/jumbo v5, "cpu.active"

    invoke-virtual {v4, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    const-wide/high16 v9, 0x4039000000000000L    # 25.0

    div-double v9, v4, v9

    cmpl-double v9, v0, v9

    if-lez v9, :cond_7

    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    div-double v0, v4, v0

    :cond_7
    long-to-double v4, v2

    mul-double/2addr v0, v4

    const-wide v4, 0x408f400000000000L    # 1000.0

    div-double v4, v0, v4

    sget-object v1, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;->IDLE:Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->a(Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo$DrainType;JD)Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :goto_7
    :try_start_6
    invoke-direct {p0, v7, v8}, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->b(J)V

    .line 212
    iget-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 213
    const/4 v0, 0x1

    .line 214
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-gtz v1, :cond_b

    .line 215
    const/4 v0, 0x0

    goto/16 :goto_0

    .line 207
    :cond_8
    const/4 v0, 0x0

    move v3, v0

    goto/16 :goto_1

    :cond_9
    const/4 v0, 0x0

    move v2, v0

    goto/16 :goto_2

    :cond_a
    const/4 v0, 0x0

    move v1, v0

    goto/16 :goto_3

    .line 217
    :cond_b
    iget-object v1, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v2, v0

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;

    .line 223
    iget-object v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a:Landroid/os/BatteryStats$Uid;

    if-nez v3, :cond_c

    .line 224
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 225
    goto :goto_8

    .line 227
    :cond_c
    iget v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->j:I

    iget-object v4, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->a:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v4}, Landroid/os/BatteryStats$Uid;->getUid()I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    move-result v4

    if-ne v3, v4, :cond_d

    .line 228
    const/4 v1, 0x1

    .line 230
    :try_start_7
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v3

    const-string/jumbo v4, "monitor"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string/jumbo v6, "CPU Run Time: ### cpuTime="

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->e:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", cpuFgTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->h:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", wakelockTime="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->i:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->warn(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    iget-wide v3, v0, Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;->b:D

    iget-wide v5, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->n:D

    div-double/2addr v3, v5

    double-to-float v3, v3

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float/2addr v3, v4

    .line 235
    iput v3, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    .line 236
    iput v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    .line 237
    iput-object v0, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->q:Lcom/alipay/mobile/logmonitor/analysis/power/BatterySipper;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    move v0, v1

    .line 244
    :goto_9
    :try_start_8
    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "refresh ,mPercentOfTotal:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->k:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",mIndex:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/alipay/mobile/logmonitor/analysis/power/PowerUsageInfo;->l:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ",find:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0

    goto/16 :goto_0

    .line 246
    :catch_0
    move-exception v1

    .line 247
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "refresh,exception:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    .line 241
    :cond_d
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    .line 242
    goto/16 :goto_8

    .line 246
    :catch_1
    move-exception v0

    move-object v1, v0

    move v0, v6

    goto :goto_a

    :catch_2
    move-exception v0

    move-object v13, v0

    move v0, v1

    move-object v1, v13

    goto :goto_a

    :catch_3
    move-exception v0

    goto/16 :goto_7

    :catch_4
    move-exception v0

    goto/16 :goto_6

    :catch_5
    move-exception v0

    goto/16 :goto_5

    :catch_6
    move-exception v0

    goto/16 :goto_4

    :cond_e
    move v0, v6

    goto :goto_9
.end method
