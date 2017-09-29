.class public Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;
.super Ljava/lang/Object;
.source "AppExtra.java"


# instance fields
.field public actionId:Ljava/lang/String;

.field public actionType:Ljava/lang/String;

.field public bizType:Ljava/lang/String;

.field public launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

.field public mainType:Ljava/lang/String;

.field public mode:Ljava/lang/String;

.field public preCheck:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
.end method


# virtual methods
.method public toScheme()Ljava/lang/String;
    .locals 3

    .prologue
    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    if-eqz v1, :cond_0

    .line 36
    const-string/jumbo v1, "&so="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->showOptionMenu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 37
    const-string/jumbo v2, "&pd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->canPullDown:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 38
    const-string/jumbo v2, "&bc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 39
    const-string/jumbo v2, "&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toScheme(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 21
    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "alipays://platformapi/startapp?appId="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    if-eqz v1, :cond_0

    .line 24
    const-string/jumbo v1, "&so="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->showOptionMenu:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 25
    const-string/jumbo v2, "&pd="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->canPullDown:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 26
    const-string/jumbo v2, "&bc="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->backgroundColor:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    const-string/jumbo v2, "&url="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/model/AppExtra;->launchParams:Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;

    iget-object v2, v2, Lcom/alipay/mobile/socialsdk/contact/model/LaunchParams;->url:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
