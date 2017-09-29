.class final Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;
.super Ljava/lang/Object;
.source "BannerView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

.field private final synthetic b:I


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;I)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    iput p2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;->b:I

    .line 256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 259
    iget-object v0, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;)Ljava/util/List;

    move-result-object v0

    .line 260
    iget v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;->b:I

    iget-object v2, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-virtual {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->a()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;

    .line 261
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 262
    iget-object v1, p0, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/h;->a:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;->b(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/g;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;

    move-result-object v1

    invoke-static {v1}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;->access$1(Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/BannerView;)Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;

    move-result-object v1

    .line 263
    sget-object v2, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/a;->b:Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/a;

    invoke-virtual {v2}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/a;->a()Ljava/lang/String;

    move-result-object v2

    .line 264
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->e()Z

    .line 262
    invoke-interface {v1, v2, v3}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    :cond_0
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 271
    :goto_0
    return-void

    .line 270
    :cond_1
    invoke-virtual {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/ui/banner/c;->b()Ljava/lang/String;

    move-result-object v0

    .line 269
    invoke-static {v0}, Lcom/alipay/android/phone/businesscommon/advertisement/c/a;->a(Ljava/lang/String;)I

    goto :goto_0
.end method
