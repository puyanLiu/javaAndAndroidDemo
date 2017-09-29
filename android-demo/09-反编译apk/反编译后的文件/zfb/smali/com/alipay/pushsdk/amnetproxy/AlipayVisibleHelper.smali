.class public final Lcom/alipay/pushsdk/amnetproxy/AlipayVisibleHelper;
.super Ljava/lang/Object;
.source "AlipayVisibleHelper.java"


# static fields
.field public static final STATE_BACKGROUND:I = 0x2

.field public static final STATE_FORGROUND:I = 0x1

.field public static final STATE_NO_EXIST_MAIN_PROC:I = 0x3


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getStateVisibleAlipay()I
    .locals 2

    .prologue
    const/4 v0, 0x2

    .line 40
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->isBindedMainProc()Z

    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    const/4 v0, 0x3

    .line 50
    :cond_0
    :goto_0
    return v0

    .line 44
    :cond_1
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 47
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isVisibleAlipay()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 23
    invoke-static {}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->getInstance()Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/pushsdk/amnetproxy/AmnetNotifServiceStateListener;->isBindedMainProc()Z

    move-result v1

    .line 24
    if-nez v1, :cond_1

    .line 33
    :cond_0
    :goto_0
    return v0

    .line 27
    :cond_1
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isScreenOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    invoke-static {}, Lcom/alipay/pushsdk/push/NotificationService;->b()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/mobile/common/transport/utils/MiscUtils;->isAtFrontDesk(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 33
    const/4 v0, 0x1

    goto :goto_0
.end method
