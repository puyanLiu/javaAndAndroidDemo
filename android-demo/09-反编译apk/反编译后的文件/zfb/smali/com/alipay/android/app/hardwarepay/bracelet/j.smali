.class final Lcom/alipay/android/app/hardwarepay/bracelet/j;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/android/app/hardwarepay/bracelet/i;


# direct methods
.method constructor <init>(Lcom/alipay/android/app/hardwarepay/bracelet/i;)V
    .locals 0

    .prologue
    .line 212
    iput-object p1, p0, Lcom/alipay/android/app/hardwarepay/bracelet/j;->a:Lcom/alipay/android/app/hardwarepay/bracelet/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 215
    const/4 v0, 0x2

    sget-object v1, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->query:Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;

    invoke-virtual {v1}, Lcom/alipay/android/app/hardwarepay/base/PayOptEnum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/android/app/assist/MspAssistUtil;->a(ILjava/lang/String;)V

    .line 219
    return-void
.end method
