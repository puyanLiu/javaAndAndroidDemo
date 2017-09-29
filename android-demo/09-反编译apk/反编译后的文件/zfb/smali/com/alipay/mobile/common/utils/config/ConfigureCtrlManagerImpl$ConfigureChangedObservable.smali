.class Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;
.super Ljava/util/Observable;
.source "ConfigureCtrlManagerImpl.java"


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;)V
    .locals 0

    .prologue
    .line 50
    iput-object p1, p0, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->this$0:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;

    invoke-direct {p0}, Ljava/util/Observable;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyObservers(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 54
    invoke-virtual {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->setChanged()V

    .line 56
    :try_start_0
    invoke-super {p0, p1}, Ljava/util/Observable;->notifyObservers(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 58
    const-string/jumbo v1, "ConfigureCtrlManager"

    invoke-static {v1, v0}, Lcom/alipay/mobile/common/utils/LogCatUtil;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method
