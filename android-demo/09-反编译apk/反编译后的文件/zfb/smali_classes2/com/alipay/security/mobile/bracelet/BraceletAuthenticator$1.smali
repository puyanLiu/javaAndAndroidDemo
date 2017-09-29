.class Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$1;
.super Ljava/lang/Object;
.source "BraceletAuthenticator.java"

# interfaces
.implements Lcom/alipay/security/mobile/fingerprint/vendor/VendorFingerPrint$InitCallback;


# instance fields
.field final synthetic this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;


# direct methods
.method constructor <init>(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;)V
    .locals 0

    .prologue
    .line 67
    iput-object p1, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$1;->this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(I)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$1;->this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;

    invoke-static {v0, p1}, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->access$002(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;I)I

    .line 71
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$1;->this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->access$100(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator$1;->this$0:Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;

    invoke-static {v0}, Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;->access$100(Lcom/alipay/security/mobile/bracelet/BraceletAuthenticator;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    .line 73
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
