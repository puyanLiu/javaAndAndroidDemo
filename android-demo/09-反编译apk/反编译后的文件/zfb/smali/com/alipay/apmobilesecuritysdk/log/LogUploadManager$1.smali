.class Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;


# direct methods
.method constructor <init>(Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager$1;->this$0:Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager$1;->this$0:Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;

    invoke-static {v0}, Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;->access$000(Lcom/alipay/apmobilesecuritysdk/log/LogUploadManager;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/alipay/security/mobile/module/commonutils/LOG;->logException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method
