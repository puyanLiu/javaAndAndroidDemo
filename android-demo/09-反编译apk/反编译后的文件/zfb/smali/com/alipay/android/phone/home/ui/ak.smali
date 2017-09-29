.class final Lcom/alipay/android/phone/home/ui/ak;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/aj;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/aj;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ak;->a:Lcom/alipay/android/phone/home/ui/aj;

    .line 324
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 327
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ak;->a:Lcom/alipay/android/phone/home/ui/aj;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/aj;->a(Lcom/alipay/android/phone/home/ui/aj;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$6(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;)V

    .line 328
    return-void
.end method
