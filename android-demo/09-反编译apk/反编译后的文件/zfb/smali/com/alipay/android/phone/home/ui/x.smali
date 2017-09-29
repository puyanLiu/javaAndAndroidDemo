.class final Lcom/alipay/android/phone/home/ui/x;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/w;

.field private final synthetic b:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/w;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/x;->a:Lcom/alipay/android/phone/home/ui/w;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/x;->b:Landroid/graphics/drawable/Drawable;

    .line 591
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/x;->a:Lcom/alipay/android/phone/home/ui/w;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/w;->a(Lcom/alipay/android/phone/home/ui/w;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$11(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/x;->b:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 595
    return-void
.end method
