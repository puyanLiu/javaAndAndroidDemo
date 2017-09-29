.class public abstract Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
.super Landroid/app/Dialog;
.source "ShareDialog.java"


# instance fields
.field protected a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;

.field protected b:Landroid/content/Context;

.field protected c:Lcom/alipay/mobile/personalbase/model/ShareModel;

.field protected d:Landroid/view/View;

.field protected e:Landroid/view/View;

.field protected f:Lcom/alipay/mobile/commonui/widget/APTextView;

.field protected g:Lcom/alipay/mobile/commonui/widget/APEditText;

.field protected h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 35
    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 36
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/alipay/mobile/personalbase/model/ShareModel;)V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->b:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->c:Lcom/alipay/mobile/personalbase/model/ShareModel;

    .line 46
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    .line 47
    const-class v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->findServiceByInterface(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 46
    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->h:Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    .line 48
    invoke-virtual {p0, p1}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->a(Landroid/content/Context;)V

    .line 49
    return-void
.end method


# virtual methods
.method protected abstract a()Ljava/lang/String;
.end method

.method protected abstract a(Landroid/content/Context;)V
.end method

.method protected final a(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 76
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->positive:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->d:Landroid/view/View;

    .line 77
    sget v0, Lcom/alipay/mobile/socialsdk/R$id;->negative:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->e:Landroid/view/View;

    .line 78
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->setCancelable(Z)V

    .line 79
    return-void
.end method

.method public dismiss()V
    .locals 2

    .prologue
    .line 87
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->g:Lcom/alipay/mobile/commonui/widget/APEditText;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/api/util/KeyBoardUtil;->hideKeyBoard(Landroid/content/Context;Landroid/view/View;)V

    .line 90
    :cond_0
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 91
    return-void
.end method

.method public setOnClickListener(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;)Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;
    .locals 2

    .prologue
    .line 56
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->a:Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog$OnShareButtonClickListener;

    .line 57
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->d:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/widget/a;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/widget/a;-><init>(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;->e:Landroid/view/View;

    new-instance v1, Lcom/alipay/mobile/socialsdk/chat/widget/b;

    invoke-direct {v1, p0}, Lcom/alipay/mobile/socialsdk/chat/widget/b;-><init>(Lcom/alipay/mobile/socialsdk/chat/widget/ShareDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-object p0
.end method
