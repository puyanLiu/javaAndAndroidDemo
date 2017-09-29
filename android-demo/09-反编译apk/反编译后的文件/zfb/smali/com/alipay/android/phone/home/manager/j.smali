.class final Lcom/alipay/android/phone/home/manager/j;
.super Ljava/lang/Object;
.source "BaseAppsItemAdapter.java"

# interfaces
.implements Lcom/alipay/mobile/framework/service/ext/openplatform/AppIconLoadCallback;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

.field private final synthetic c:Lcom/alipay/android/phone/home/manager/ViewHolder;

.field private final synthetic d:Z


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/j;->a:Lcom/alipay/android/phone/home/manager/BaseAppsItemAdapter;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/j;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iput-object p3, p0, Lcom/alipay/android/phone/home/manager/j;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iput-boolean p4, p0, Lcom/alipay/android/phone/home/manager/j;->d:Z

    .line 531
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onLoad(Landroid/graphics/drawable/Drawable;)V
    .locals 7

    .prologue
    .line 534
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    .line 535
    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    invoke-interface {v0}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getTopActivity()Ljava/lang/ref/WeakReference;

    move-result-object v0

    .line 536
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/app/Activity;

    .line 537
    if-eqz v6, :cond_0

    .line 538
    new-instance v0, Lcom/alipay/android/phone/home/manager/k;

    iget-object v2, p0, Lcom/alipay/android/phone/home/manager/j;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    iget-object v3, p0, Lcom/alipay/android/phone/home/manager/j;->c:Lcom/alipay/android/phone/home/manager/ViewHolder;

    iget-boolean v4, p0, Lcom/alipay/android/phone/home/manager/j;->d:Z

    move-object v1, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/alipay/android/phone/home/manager/k;-><init>(Lcom/alipay/android/phone/home/manager/j;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;Lcom/alipay/android/phone/home/manager/ViewHolder;ZLandroid/graphics/drawable/Drawable;)V

    invoke-virtual {v6, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 548
    :cond_0
    return-void
.end method
