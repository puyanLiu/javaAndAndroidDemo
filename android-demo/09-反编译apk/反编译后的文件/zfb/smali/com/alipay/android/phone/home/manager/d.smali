.class final Lcom/alipay/android/phone/home/manager/d;
.super Ljava/lang/Object;
.source "AppCenterOnItemClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/c;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/c;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/d;->a:Lcom/alipay/android/phone/home/manager/c;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 252
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 256
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/d;->a:Lcom/alipay/android/phone/home/manager/c;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/c;->a(Lcom/alipay/android/phone/home/manager/c;)Lcom/alipay/android/phone/home/manager/b;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/b;->a:Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/d;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/AppCenterOnItemClickListener;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 257
    return-void
.end method
