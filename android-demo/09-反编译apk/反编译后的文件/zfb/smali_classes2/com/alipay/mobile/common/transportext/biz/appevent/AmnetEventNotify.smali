.class public Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;
.super Ljava/lang/Object;
.source "AmnetEventNotify.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "amnet_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-class v1, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onAppLeave()V
    .locals 2

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityUserleavehint: [AmnetEventNotify] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->getListener()Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onAppLeaveEvent()V

    .line 24
    return-void
.end method

.method public static onAppResume()V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityResume:  [AmnetEventNotify]  "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->getListener()Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onAppResumeEvent()V

    .line 30
    return-void
.end method

.method public static onSyncConnState()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 41
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onSyncConnState"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getAmnetManager()Lcom/alipay/mobile/common/amnet/api/AmnetManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetManager;->getAmnetGeneralEventManager()Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;

    move-result-object v0

    .line 44
    invoke-interface {v0}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;->getLatestConnState()I

    move-result v1

    .line 45
    if-eq v1, v2, :cond_1

    .line 46
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onSyncConnState state have synchronous"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    :cond_0
    :goto_0
    return-void

    .line 50
    :cond_1
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/mmtp/amnetadapt/AmnetHelper;->getConnState()I

    move-result v1

    .line 51
    if-eq v1, v2, :cond_0

    .line 52
    invoke-interface {v0, v1}, Lcom/alipay/mobile/common/amnet/api/AmnetGeneralEventManager;->notifyConnStateChange(I)V

    .line 53
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onSyncConnState notifyConnStateChange"

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static onSyncInitChanged(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 59
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "onSyncInitChanged onSyncInitChanged."

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    invoke-static {}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager;->getListener()Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/alipay/mobile/common/transportext/biz/appevent/AppEventManager$EventInterface;->onSyncInitChanged(Ljava/util/Map;)V

    .line 61
    return-void
.end method

.method public static setUserInfo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 34
    sget-object v0, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetEventNotify;->LOGTAG:Ljava/lang/String;

    const-string/jumbo v1, "frameworkActivityResume:  [AmnetEventNotify] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/transportext/biz/util/LogUtilAmnet;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    invoke-static {p0, p1}, Lcom/alipay/mobile/common/transportext/biz/appevent/AmnetUserInfo;->setUserInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    return-void
.end method
