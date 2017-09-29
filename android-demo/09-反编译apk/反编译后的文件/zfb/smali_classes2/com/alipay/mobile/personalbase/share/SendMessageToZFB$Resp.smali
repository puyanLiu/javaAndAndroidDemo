.class public Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Resp;
.super Lcom/alipay/mobile/personalbase/share/BaseResp;
.source "SendMessageToZFB.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alipay/mobile/personalbase/share/SendMessageToZFB;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseResp;-><init>()V

    .line 11
    return-void
.end method

.method public constructor <init>(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Lcom/alipay/mobile/personalbase/share/BaseResp;-><init>()V

    .line 14
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/personalbase/share/SendMessageToZFB$Resp;->fromBundle(Landroid/os/Bundle;)V

    .line 15
    return-void
.end method


# virtual methods
.method public fromBundle(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 22
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseResp;->fromBundle(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x1

    return v0
.end method

.method public toBundle(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 26
    invoke-super {p0, p1}, Lcom/alipay/mobile/personalbase/share/BaseResp;->toBundle(Landroid/os/Bundle;)V

    .line 27
    return-void
.end method
