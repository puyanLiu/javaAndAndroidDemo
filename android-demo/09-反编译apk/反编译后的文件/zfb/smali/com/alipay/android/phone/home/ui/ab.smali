.class final Lcom/alipay/android/phone/home/ui/ab;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/aa;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/aa;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/ab;->a:Lcom/alipay/android/phone/home/ui/aa;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/ab;->b:Ljava/util/List;

    .line 697
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 700
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/ab;->a:Lcom/alipay/android/phone/home/ui/aa;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/aa;->a(Lcom/alipay/android/phone/home/ui/aa;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/ab;->b:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->access$12(Lcom/alipay/android/phone/home/ui/HomeFrameLayout;Ljava/util/List;)V

    .line 701
    return-void
.end method
