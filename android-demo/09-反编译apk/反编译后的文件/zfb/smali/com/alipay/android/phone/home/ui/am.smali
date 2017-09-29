.class final Lcom/alipay/android/phone/home/ui/am;
.super Ljava/lang/Object;
.source "HomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/al;

.field private final synthetic b:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/al;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/am;->a:Lcom/alipay/android/phone/home/ui/al;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/am;->b:Ljava/util/List;

    .line 399
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 402
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/am;->a:Lcom/alipay/android/phone/home/ui/al;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/al;->a(Lcom/alipay/android/phone/home/ui/al;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/am;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->c(Ljava/util/List;)V

    .line 403
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/am;->a:Lcom/alipay/android/phone/home/ui/al;

    invoke-static {v0}, Lcom/alipay/android/phone/home/ui/al;->a(Lcom/alipay/android/phone/home/ui/al;)Lcom/alipay/android/phone/home/ui/HomeFrameLayout;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/HomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    invoke-virtual {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->notifyDataSetChanged()V

    .line 404
    return-void
.end method
