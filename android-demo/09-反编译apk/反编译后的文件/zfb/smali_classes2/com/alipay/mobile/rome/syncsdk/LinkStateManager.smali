.class public Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;
.super Ljava/lang/Object;
.source "LinkStateManager.java"


# static fields
.field private static volatile a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTING:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    sput-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getLinkState()Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    return-object v0
.end method

.method public static setLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V
    .locals 3

    .prologue
    .line 41
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-ne p0, v0, :cond_1

    .line 61
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-eq p0, v0, :cond_2

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-eq p0, v0, :cond_2

    .line 46
    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/util/NetInfoHelper;->isNetAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 47
    sget-object p0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->NOT_AVAILABLE:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 48
    const-string/jumbo v0, "LinkStateManager"

    const-string/jumbo v1, "setLinkState: [ Net Not Available ] "

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    :cond_2
    sput-object p0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    .line 54
    const-string/jumbo v0, "LinkStateManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "setLinkState: [ linkState="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " ][ timeout:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/alipay/mobile/rome/syncsdk/constant/LinkConstants;->IS_LINK_TIMEOUT:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-boolean v0, Lcom/alipay/mobile/rome/syncsdk/constant/LinkConstants;->IS_LINK_TIMEOUT:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;->CONNECTED:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    if-ne p0, v0, :cond_0

    .line 60
    :cond_3
    const-string/jumbo v0, "ssl"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/util/AppContextHelper;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->getInstance(Landroid/content/Context;)Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/LongLinkServiceManager;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v0, "mmtp"

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/LinkSelector;->getLinkType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->getInstance()Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;

    move-result-object v0

    sget-object v1, Lcom/alipay/mobile/rome/syncsdk/LinkStateManager;->a:Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/rome/syncsdk/zlink2/LongLinkManager2;->onLinkState(Lcom/alipay/mobile/rome/syncsdk/LinkStateManager$LinkState;)V

    goto/16 :goto_0
.end method
