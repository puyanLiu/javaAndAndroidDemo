.class public Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;
.super Ljava/lang/Object;
.source "APTaobaoGoodsObject.java"

# interfaces
.implements Lcom/alipay/mobile/personalbase/share/APMediaMessage$IMediaObject;


# instance fields
.field public free_shipping:Z

.field public imageData:[B

.field public imagePath:Ljava/lang/String;

.field public imageUrl:Ljava/lang/String;

.field public ori_price:Ljava/lang/String;

.field public price:Ljava/lang/String;

.field public tag1:Ljava/lang/String;

.field public tag2:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

.field public webpageUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .locals 2

    .prologue
    .line 66
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x2800

    if-gt v0, v1, :cond_0

    .line 67
    const/4 v0, 0x1

    .line 69
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 48
    return-void
.end method

.method public type()I
    .locals 1

    .prologue
    .line 61
    const/16 v0, 0x3f2

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 52
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_WEB_PAGE_OBJECT_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->webpageUrl:Ljava/lang/String;

    .line 53
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_TAG1:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->tag1:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->tag1:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_TAOBAO_TAG2:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->tag2:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->tag2:Ljava/lang/String;

    .line 55
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_UI:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 56
    const-class v1, Lcom/alipay/mobile/personalbase/share/ui/Ui;

    invoke-static {v0, v1}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/personalbase/share/ui/Ui;

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/APTaobaoGoodsObject;->ui:Lcom/alipay/mobile/personalbase/share/ui/Ui;

    .line 57
    return-void
.end method
