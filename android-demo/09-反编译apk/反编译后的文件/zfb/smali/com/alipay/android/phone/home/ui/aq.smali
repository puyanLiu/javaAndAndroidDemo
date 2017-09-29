.class final Lcom/alipay/android/phone/home/ui/aq;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/ap;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/ap;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/aq;->a:Lcom/alipay/android/phone/home/ui/ap;

    .line 486
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 489
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/aq;->a:Lcom/alipay/android/phone/home/ui/ap;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/ap;->a(Lcom/alipay/android/phone/home/ui/ap;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->c()V

    .line 490
    return-void
.end method
