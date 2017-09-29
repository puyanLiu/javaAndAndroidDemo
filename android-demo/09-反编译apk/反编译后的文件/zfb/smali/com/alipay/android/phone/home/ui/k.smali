.class final Lcom/alipay/android/phone/home/ui/k;
.super Ljava/lang/Object;
.source "AppsCenterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/j;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/j;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/k;->a:Lcom/alipay/android/phone/home/ui/j;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/k;->a:Lcom/alipay/android/phone/home/ui/j;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/j;->a(Lcom/alipay/android/phone/home/ui/j;)Lcom/alipay/android/phone/home/ui/AppsCenterFragment;

    move-result-object v0

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/AppsCenterFragment;->access$1(Lcom/alipay/android/phone/home/ui/AppsCenterFragment;)V

    .line 135
    return-void
.end method
