.class final Lcom/alipay/mobile/socialsdk/contact/processer/j;
.super Ljava/lang/Object;
.source "MobileContactUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/j;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/j;->b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

    .line 206
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .prologue
    .line 209
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 210
    :try_start_0
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/j;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->d(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/j;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    iget-object v2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/j;->b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

    const/4 v3, 0x0

    invoke-static {v0, v2, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V

    .line 209
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
