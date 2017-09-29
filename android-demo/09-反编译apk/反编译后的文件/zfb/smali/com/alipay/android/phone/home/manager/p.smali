.class final Lcom/alipay/android/phone/home/manager/p;
.super Ljava/lang/Object;
.source "HomeAppsOnItemClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/o;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/o;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/p;->a:Lcom/alipay/android/phone/home/manager/o;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/p;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 270
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/p;->a:Lcom/alipay/android/phone/home/manager/o;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/o;->a(Lcom/alipay/android/phone/home/manager/o;)Lcom/alipay/android/phone/home/manager/n;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/n;->a:Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/p;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/HomeAppsOnItemClickListener;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 275
    return-void
.end method
