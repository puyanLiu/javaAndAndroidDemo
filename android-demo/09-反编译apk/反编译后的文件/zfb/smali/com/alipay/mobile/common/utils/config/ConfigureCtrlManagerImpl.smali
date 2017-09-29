.class public Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;
.super Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;
.source "ConfigureCtrlManagerImpl.java"

# interfaces
.implements Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManager;
.implements Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperation;


# instance fields
.field private a:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Lcom/alipay/mobile/common/utils/config/fmk/ConfigureOperationImpl;-><init>()V

    .line 50
    return-void
.end method

.method private a()Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->a:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    if-nez v0, :cond_0

    .line 45
    new-instance v0, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    invoke-direct {v0, p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;-><init>(Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;)V

    iput-object v0, p0, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->a:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->a:Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    return-object v0
.end method


# virtual methods
.method public addConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V
    .locals 3

    .prologue
    .line 23
    const-string/jumbo v0, "ConfigureCtrlManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "addConfigureChangedListener.  observer="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->a()Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->addObserver(Ljava/util/Observer;)V

    .line 25
    return-void
.end method

.method public getConfgureVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    const-string/jumbo v0, "-1"

    return-object v0
.end method

.method public notifyConfigureChangedEvent()V
    .locals 3

    .prologue
    .line 29
    const-string/jumbo v0, "ConfigureCtrlManager"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "notifyConfigureChangedEvent.  observer count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->a()Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->countObservers()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/utils/LogCatUtil;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    invoke-direct {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->a()Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->notifyObservers()V

    .line 31
    return-void
.end method

.method public removeConfigureChangedListener(Lcom/alipay/mobile/common/utils/config/ConfigureChangedListener;)V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl;->a()Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/alipay/mobile/common/utils/config/ConfigureCtrlManagerImpl$ConfigureChangedObservable;->deleteObserver(Ljava/util/Observer;)V

    .line 36
    return-void
.end method
