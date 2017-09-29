.class Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:I

.field final synthetic this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;I)V
    .locals 0

    iput-object p1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    iput p2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$0(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$0(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "progress_text"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$1(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->a:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$0(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    const-string/jumbo v2, "id"

    const-string/jumbo v3, "download_process_bar"

    invoke-static {v1, v2, v3}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$1(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x64

    iget v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->a:I

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/RemoteViews;->setProgressBar(IIIZ)V

    iget-object v0, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-static {v0}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$2(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)Landroid/app/NotificationManager;

    move-result-object v0

    const-string/jumbo v1, "DOWNLOAD"

    iget-object v2, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-static {v2}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$3(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)I

    move-result v2

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-static {v3}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$0(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)Landroid/app/Notification;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v0

    const-string/jumbo v1, "UpdateNotifyHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "\u4e0b\u8f7d\uff1a"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->a:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "%,notifyId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/alipay/mobile/about/service/UpdateNotifyHelper$1;->this$0:Lcom/alipay/mobile/about/service/UpdateNotifyHelper;

    invoke-static {v3}, Lcom/alipay/mobile/about/service/UpdateNotifyHelper;->access$3(Lcom/alipay/mobile/about/service/UpdateNotifyHelper;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
