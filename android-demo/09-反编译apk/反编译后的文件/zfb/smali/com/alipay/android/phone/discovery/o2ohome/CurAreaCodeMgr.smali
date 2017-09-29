.class public Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;
.super Ljava/lang/Object;
.source "CurAreaCodeMgr.java"


# static fields
.field private static mInstance:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;


# instance fields
.field private mAdCode:Ljava/lang/String;

.field private mContext:Landroid/app/Activity;

.field private mLoginUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private CurAreaCodeMgr()V
    .locals 0

    .prologue
    .line 36
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;
    .locals 2

    .prologue
    .line 28
    const-class v1, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mInstance:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    invoke-direct {v0}, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;-><init>()V

    sput-object v0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mInstance:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;

    .line 32
    :cond_0
    sget-object v0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mInstance:Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 28
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized getAdCode()Ljava/lang/String;
    .locals 3

    .prologue
    .line 48
    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/alipay/android/phone/discovery/o2ohome/util/ConfigServiceUtils;->getCurUserId()Ljava/lang/String;

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mLoginUid:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mAdCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    :goto_0
    monitor-exit p0

    return-object v0

    .line 53
    :cond_0
    :try_start_1
    const-string/jumbo v1, ""

    iput-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mAdCode:Ljava/lang/String;

    .line 54
    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mLoginUid:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mContext:Landroid/app/Activity;

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;

    iget-object v1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mContext:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;-><init>(Landroid/app/Activity;Z)V

    .line 57
    invoke-virtual {v0}, Lcom/alipay/android/phone/discovery/o2ohome/UserSelectCity;->getSelectCity()Lcom/alipay/mobile/beehive/cityselect/model/CityVO;

    move-result-object v0

    .line 58
    if-eqz v0, :cond_1

    .line 59
    iget-object v0, v0, Lcom/alipay/mobile/beehive/cityselect/model/CityVO;->adCode:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mAdCode:Ljava/lang/String;

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mAdCode:Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public setContext(Landroid/app/Activity;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mContext:Landroid/app/Activity;

    .line 40
    return-void
.end method

.method public declared-synchronized setSelectCity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 43
    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mLoginUid:Ljava/lang/String;

    .line 44
    iput-object p2, p0, Lcom/alipay/android/phone/discovery/o2ohome/CurAreaCodeMgr;->mAdCode:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    monitor-exit p0

    return-void

    .line 43
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
