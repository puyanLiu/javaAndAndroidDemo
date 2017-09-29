.class final Lcom/alipay/android/phone/home/manager/u;
.super Ljava/lang/Object;
.source "RecommandOnClickListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/phone/home/manager/t;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/home/manager/t;Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/phone/home/manager/u;->a:Lcom/alipay/android/phone/home/manager/t;

    iput-object p2, p0, Lcom/alipay/android/phone/home/manager/u;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    .line 171
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/u;->a:Lcom/alipay/android/phone/home/manager/t;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/t;->a(Lcom/alipay/android/phone/home/manager/t;)Lcom/alipay/android/phone/home/manager/s;

    move-result-object v0

    iget-object v0, v0, Lcom/alipay/android/phone/home/manager/s;->a:Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;

    iget-object v0, p0, Lcom/alipay/android/phone/home/manager/u;->b:Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;

    invoke-static {v0}, Lcom/alipay/android/phone/home/manager/RecommandOnClickListener;->a(Lcom/alipay/mobile/framework/service/ext/openplatform/app/App;)V

    .line 176
    return-void
.end method
