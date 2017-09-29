.class Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;
.super Ljava/lang/Object;
.source "DynamicAppActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;

    iput-object p2, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;->c:Ljava/lang/String;

    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;->b:Ljava/lang/String;

    iget-object v1, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;->c:Ljava/lang/String;

    new-instance v2, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;

    iget-object v3, p0, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1$1;->a:Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;

    invoke-static {v3}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;->a(Lcom/alipay/android/app/template/ui/DynamicAppActivity$1;)Lcom/alipay/android/app/template/ui/DynamicAppActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/alipay/android/app/template/ui/DynamicAppActivity$RpcCallback;-><init>(Lcom/alipay/android/app/template/ui/DynamicAppActivity;)V

    invoke-static {v0, v1, v2}, Lcom/alipay/android/app/template/util/RpcHelper;->callRpc(Ljava/lang/String;Ljava/lang/String;Lcom/alipay/android/app/template/util/RpcHelper$RpcCallback;)V

    .line 146
    return-void
.end method
