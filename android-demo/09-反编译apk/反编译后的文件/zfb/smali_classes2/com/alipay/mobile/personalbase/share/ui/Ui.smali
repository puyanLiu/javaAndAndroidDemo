.class public Lcom/alipay/mobile/personalbase/share/ui/Ui;
.super Ljava/lang/Object;
.source "Ui.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x4336f1499e2eb51aL


# instance fields
.field public skin:Ljava/lang/String;

.field public skinImgCloudId:Ljava/lang/String;

.field public style:Lcom/alipay/mobile/personalbase/share/ui/Style;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSkin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->skin:Ljava/lang/String;

    return-object v0
.end method

.method public getStyle()Lcom/alipay/mobile/personalbase/share/ui/Style;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    return-object v0
.end method

.method public setSkin(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->skin:Ljava/lang/String;

    .line 40
    return-void
.end method

.method public setStyle(Lcom/alipay/mobile/personalbase/share/ui/Style;)V
    .locals 0

    .prologue
    .line 31
    iput-object p1, p0, Lcom/alipay/mobile/personalbase/share/ui/Ui;->style:Lcom/alipay/mobile/personalbase/share/ui/Style;

    .line 32
    return-void
.end method
