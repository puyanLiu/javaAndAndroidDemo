.class final Lcom/alipay/asset/common/view/b;
.super Ljava/lang/Object;
.source "AccountInfoView.java"

# interfaces
.implements Lcom/alipay/mobile/commonbiz/image/ImageWorkerCallback;


# instance fields
.field final synthetic a:Lcom/alipay/asset/common/view/AccountInfoView;


# direct methods
.method constructor <init>(Lcom/alipay/asset/common/view/AccountInfoView;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/asset/common/view/b;->a:Lcom/alipay/asset/common/view/AccountInfoView;

    .line 249
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCancel(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 275
    return-void
.end method

.method public final onFailure(Ljava/lang/String;ILjava/lang/String;)V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/alipay/asset/common/view/b;->a:Lcom/alipay/asset/common/view/AccountInfoView;

    iget-object v1, p0, Lcom/alipay/asset/common/view/b;->a:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-virtual {v1}, Lcom/alipay/asset/common/view/AccountInfoView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/alipay/android/phone/wealth/home/R$drawable;->a:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/asset/common/view/AccountInfoView;->access$0(Lcom/alipay/asset/common/view/AccountInfoView;Landroid/graphics/drawable/Drawable;)V

    .line 265
    return-void
.end method

.method public final onProgress(Ljava/lang/String;D)V
    .locals 0

    .prologue
    .line 270
    return-void
.end method

.method public final onStart(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 253
    return-void
.end method

.method public final onSuccess(Ljava/lang/String;Landroid/graphics/drawable/BitmapDrawable;)V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/alipay/asset/common/view/b;->a:Lcom/alipay/asset/common/view/AccountInfoView;

    invoke-static {v0, p2}, Lcom/alipay/asset/common/view/AccountInfoView;->access$0(Lcom/alipay/asset/common/view/AccountInfoView;Landroid/graphics/drawable/Drawable;)V

    .line 259
    return-void
.end method
