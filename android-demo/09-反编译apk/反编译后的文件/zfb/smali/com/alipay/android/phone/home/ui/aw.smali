.class final Lcom/alipay/android/phone/home/ui/aw;
.super Ljava/lang/Object;
.source "SimpleHomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/av;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/av;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/aw;->a:Lcom/alipay/android/phone/home/ui/av;

    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aw;->a:Lcom/alipay/android/phone/home/ui/av;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/av;->a(Lcom/alipay/android/phone/home/ui/av;)Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;->access$1(Lcom/alipay/android/phone/home/ui/SimpleHomeFrameLayout;)V

    .line 159
    return-void
.end method
