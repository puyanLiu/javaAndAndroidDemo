.class final Lcom/alipay/android/phone/home/ui/c;
.super Ljava/lang/Object;
.source "AbstractHomeFrameLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/ui/c;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iput-object p2, p0, Lcom/alipay/android/phone/home/ui/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/alipay/android/phone/home/ui/c;->a:Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;

    iget-object v0, v0, Lcom/alipay/android/phone/home/ui/AbstractHomeFrameLayout;->a:Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;

    iget-object v1, p0, Lcom/alipay/android/phone/home/ui/c;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/service/ext/openplatform/AppStatusChangeNotify;->getApp()Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alipay/android/phone/home/manager/HomeAppsItemAdapter;->d(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 118
    return-void
.end method
