.class final Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;
.super Ljava/lang/Object;
.source "MtopServiceImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lmtopsdk/mtop/intf/MtopBuilder;

.field final synthetic b:Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;

.field final synthetic c:Ljava/lang/Class;

.field final synthetic d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;


# direct methods
.method constructor <init>(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Lmtopsdk/mtop/intf/MtopBuilder;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/Class;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    iput-object p2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->a:Lmtopsdk/mtop/intf/MtopBuilder;

    iput-object p3, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->b:Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;

    iput-object p4, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->c:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .prologue
    .line 200
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    invoke-virtual {v0}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;->registerSessionInfo()V

    .line 201
    iget-object v0, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->a:Lmtopsdk/mtop/intf/MtopBuilder;

    new-instance v1, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;

    iget-object v2, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->d:Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;

    iget-object v3, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->b:Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;

    iget-object v4, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->c:Ljava/lang/Class;

    iget-object v5, p0, Lcom/alipay/android/phone/mobilesdk/mtop/impl/a;->a:Lmtopsdk/mtop/intf/MtopBuilder;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/alipay/android/phone/mobilesdk/mtop/impl/b;-><init>(Lcom/alipay/android/phone/mobilesdk/mtop/impl/MtopServiceImpl;Lcom/alipay/android/phone/mobilesdk/mtop/MtopAsyncRequestCallback;Ljava/lang/Class;Lmtopsdk/mtop/intf/MtopBuilder;)V

    invoke-virtual {v0, v1}, Lmtopsdk/mtop/intf/MtopBuilder;->addListener(Lmtopsdk/mtop/common/MtopListener;)Lmtopsdk/mtop/intf/MtopBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lmtopsdk/mtop/intf/MtopBuilder;->asyncRequest()Lmtopsdk/mtop/common/ApiID;

    .line 203
    return-void
.end method
