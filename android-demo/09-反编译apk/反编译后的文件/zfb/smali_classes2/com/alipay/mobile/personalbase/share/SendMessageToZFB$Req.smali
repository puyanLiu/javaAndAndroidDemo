.class public Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;
.super Lcom/alipay/mobile/personalbase/share/BaseReq;
.source "SendMessageToZFB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/personalbase/share/SendMessageToZFB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Req"
.end annotation


# static fields
.field public static final ZFBSceneSession:I


# instance fields
.field private a:I

.field public message:Lcom/alipay/mobile/personalbase/share/APMediaMessage;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseReq;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseReq;-><init>()V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    .line 43
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->fromBundle(Landroid/os/Bundle;)V

    .line 44
    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseReq;->fromBundle(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p1}, Lcom/alipay/mobile/personalbase/share/APMediaMessage$Builder;->fromBundle(Landroid/os/Bundle;)Lcom/alipay/mobile/personalbase/share/APMediaMessage;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->message:Lcom/alipay/mobile/personalbase/share/APMediaMessage;

    .line 53
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    .line 54
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseReq;->toBundle(Landroid/os/Bundle;)V

    .line 58
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->message:Lcom/alipay/mobile/personalbase/share/APMediaMessage;

    invoke-static {v0}, Lcom/alipay/mobile/personalbase/share/APMediaMessage$Builder;->toBundle(Lcom/alipay/mobile/personalbase/share/APMediaMessage;)Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 59
    sget-object v0, Lcom/alipay/mobile/personalbase/share/ShareConstants;->EXTRA_SEND_MESSAGE_SCENE:Ljava/lang/String;

    iget v1, p0, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Req;->a:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 60
    return-void
.end method
