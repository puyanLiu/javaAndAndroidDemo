.class public Lcom/alipay/mobile/aspect/advice/StartAppAdvice;
.super Ljava/lang/Object;
.source "StartAppAdvice.java"

# interfaces
.implements Lcom/alipay/mobile/aspect/Advice;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 31
    return-void
.end method

.method public onCallAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 25
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCallBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 21
    return-void
.end method

.method public onExecutionAfter(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 109
    return-void
.end method

.method public onExecutionAround(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair",
            "<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 41
    const-string/jumbo v0, "void com.alipay.mobile.core.impl.MicroApplicationContextImpl.doStartApp(String, String, Bundle)"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 42
    if-eqz p3, :cond_8

    array-length v0, p3

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    .line 43
    const/4 v0, 0x1

    aget-object v1, p3, v0

    .line 45
    const-string/jumbo v0, "09999988"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_TRANSFER"

    const-string/jumbo v3, "PHASE_TRANSFER_LAUNCH"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    :cond_0
    const-string/jumbo v0, "20000032"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "20000205"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 50
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_FUND"

    const-string/jumbo v3, "PHASE_FUND_LAUNCH"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    :cond_2
    const-string/jumbo v0, "20000056"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 54
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_PAY_CODE"

    const-string/jumbo v3, "PHASE_PAY_CODE_LAUNCH_ONLINE"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_PAY_CODE"

    const-string/jumbo v3, "PHASE_PAY_CODE_LAUNCH_OFFLINE"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :cond_3
    const-string/jumbo v0, "10000014"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 59
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_PAY_CODE"

    const-string/jumbo v3, "PHASE_PAY_CODE_LAUNCH_ONLINE"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_PAY_CODE"

    const-string/jumbo v3, "PHASE_PAY_CODE_LAUNCH_OFFLINE"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    :cond_4
    const-string/jumbo v0, "10000007"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 64
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_SCAN_CODE"

    const-string/jumbo v3, "PHASE_SCAN_CODE_LAUNCH"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_SCAN_CODE_IND"

    const-string/jumbo v3, "PHASE_SCAN_CODE_IND_LAUNCH"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    :cond_5
    const-string/jumbo v0, "20000167"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 69
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_SOCIAL"

    const-string/jumbo v3, "PHASE_SOCIAL_SESSION"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    const/4 v0, 0x2

    :try_start_0
    aget-object v0, p3, v0

    check-cast v0, Landroid/os/Bundle;

    .line 72
    if-eqz v0, :cond_6

    const-string/jumbo v2, "push"

    const-string/jumbo v3, "tagfrom"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 73
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_SOCIAL_PUSH"

    const-string/jumbo v3, "PHASE_SOCIAL_PUSH_SESSION"

    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 80
    :cond_6
    :goto_0
    const-string/jumbo v0, "20000261"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 81
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_TIMELINE"

    invoke-virtual {v0, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->initLinkRecord(Ljava/lang/String;)Lcom/alipay/mobile/performance/mainlink/LinkRecord;

    .line 82
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v2, "LINK_TIMELINE"

    .line 83
    const-string/jumbo v3, "PHASE_TIMELINE_LAUNCH"

    .line 82
    invoke-virtual {v0, v2, v3}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    :cond_7
    const-string/jumbo v0, "20000253"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 87
    const/4 v0, 0x2

    :try_start_1
    aget-object v0, p3, v0

    check-cast v0, Landroid/os/Bundle;

    .line 88
    if-eqz v0, :cond_8

    .line 89
    const-string/jumbo v1, "actionType"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    const-string/jumbo v2, "source"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    const-string/jumbo v2, "profile"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 92
    const-string/jumbo v1, "by_scan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 93
    invoke-static {}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->getInstance()Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;

    move-result-object v0

    const-string/jumbo v1, "LINK_SCAN_CODE"

    const-string/jumbo v2, "PHASE_SCAN_CODE_USER_PROFILE"

    invoke-virtual {v0, v1, v2}, Lcom/alipay/mobile/performance/mainlink/MainLinkRecorder;->startLinkRecordPhase(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 103
    :cond_8
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0
.end method

.method public onExecutionBefore(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 36
    return-void
.end method
