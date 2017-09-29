.class public Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;
.super Ljava/lang/Object;
.source "MonitorHelper.java"


# instance fields
.field private mIsMainLink:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->mIsMainLink:Z

    .line 12
    return-void
.end method


# virtual methods
.method public cancelMainLink()V
    .locals 1

    .prologue
    .line 30
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->mIsMainLink:Z

    .line 31
    return-void
.end method

.method public endMainLink()V
    .locals 3

    .prologue
    .line 23
    iget-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->mIsMainLink:Z

    if-eqz v0, :cond_0

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->mIsMainLink:Z

    .line 25
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_O2O"

    const-string/jumbo v2, "PHASE_O2O_LAUNCH"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->endLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)J

    .line 27
    :cond_0
    return-void
.end method

.method public startMainLink()V
    .locals 3

    .prologue
    .line 17
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/alipay/android/phone/discovery/o2ohome/util/MonitorHelper;->mIsMainLink:Z

    .line 19
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_O2O"

    const-string/jumbo v2, "PHASE_O2O_LAUNCH"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    return-void
.end method
