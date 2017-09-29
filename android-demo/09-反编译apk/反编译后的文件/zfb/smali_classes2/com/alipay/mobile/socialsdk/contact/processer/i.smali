.class final Lcom/alipay/mobile/socialsdk/contact/processer/i;
.super Ljava/lang/Object;
.source "MobileContactUploader.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

.field private final synthetic b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

.field private final synthetic c:Z


# direct methods
.method constructor <init>(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    iput-object p2, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

    iput-boolean p3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->c:Z

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 187
    invoke-static {}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    .line 188
    :try_start_0
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    invoke-static {v3}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;

    move-result-object v3

    iget-object v4, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    invoke-static {v4}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->b(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/alipay/mobile/personalbase/service/SocialSdkContactService;->isContactsUploadPermitted(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

    if-eqz v3, :cond_0

    .line 189
    iget-object v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    invoke-interface {v3, v4, v5, v6}, Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;->uploadResult(ZIZ)V

    .line 191
    :cond_0
    iget-boolean v3, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->c:Z

    if-eqz v3, :cond_2

    .line 192
    :goto_0
    iget-boolean v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->c:Z

    if-eqz v1, :cond_1

    .line 193
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    invoke-static {v0}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->c(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;)Z

    move-result v0

    .line 195
    :cond_1
    if-nez v0, :cond_3

    .line 196
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;Z)V

    .line 187
    :goto_1
    monitor-exit v2

    return-void

    :cond_2
    move v0, v1

    .line 191
    goto :goto_0

    .line 198
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->a:Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;

    iget-object v1, p0, Lcom/alipay/mobile/socialsdk/contact/processer/i;->b:Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;

    invoke-static {v0, v1}, Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;->a(Lcom/alipay/mobile/socialsdk/contact/processer/MobileContactUploader;Lcom/alipay/mobile/framework/service/ext/contact/uploader/ContactsUploaderDetailCallback;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 187
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
