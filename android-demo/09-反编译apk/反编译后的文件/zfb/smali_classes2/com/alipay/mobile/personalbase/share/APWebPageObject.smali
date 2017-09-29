.class public Lcom/alipay/mobile/personalbase/share/APWebPageObject;
.super Ljava/lang/Object;
.source "APWebPageObject.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;


# instance fields
.field private a:Ljava/lang/String;

.field public ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "Alipay.SDK.ZFBWebPageObject"

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->a:Ljava/lang/String;

    .line 17
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const-string/jumbo v0, "Alipay.SDK.ZFBWebPageObject"

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->a:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->webpageUrl:Ljava/lang/String;

    .line 21
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    .prologue
    .line 39
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->webpageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 40
    const/4 v0, 0x1

    .line 42
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 24
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 35
    const/16 v0, 0x3e9

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 28
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->webpageUrl:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_UI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 31
    const-class v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APWebPageObject;->ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

    .line 32
    return-void
.end method
