.class public Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;
.super Lcom/alipay/mobile/h5container/api/H5SimplePlugin;
.source "H5DownloadPlugin.java"

# interfaces
.implements Lcom/alipay/mobile/nebulacore/download/ProgressListener;
.implements Lcom/alipay/mobile/nebulacore/download/StatusListener;


# static fields
.field public static final TAG:Ljava/lang/String; = "H5DownloadPlugin"

.field private static synthetic d:[I


# instance fields
.field private a:Lcom/alipay/mobile/nebulacore/download/Downloader;

.field private b:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 37
    invoke-direct {p0}, Lcom/alipay/mobile/h5container/api/H5SimplePlugin;-><init>()V

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->b:Ljava/util/Set;

    .line 39
    return-void
.end method

.method private static a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    invoke-static {}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 168
    const-string/jumbo v0, "none"

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    const-string/jumbo v0, "pendding"

    goto :goto_0

    .line 159
    :pswitch_1
    const-string/jumbo v0, "downloading"

    goto :goto_0

    .line 161
    :pswitch_2
    const-string/jumbo v0, "paused"

    goto :goto_0

    .line 163
    :pswitch_3
    const-string/jumbo v0, "failed"

    goto :goto_0

    .line 165
    :pswitch_4
    const-string/jumbo v0, "success"

    goto :goto_0

    .line 155
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    if-nez v0, :cond_0

    .line 43
    iput-object p1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    .line 44
    invoke-static {}, Lcom/alipay/mobile/nebulacore/download/DownloaderImpl;->getInstance()Lcom/alipay/mobile/nebulacore/download/Downloader;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    .line 45
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulacore/download/Downloader;->setProgressListener(Lcom/alipay/mobile/nebulacore/download/ProgressListener;)V

    .line 46
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v0, p0}, Lcom/alipay/mobile/nebulacore/download/Downloader;->setStatusListener(Lcom/alipay/mobile/nebulacore/download/StatusListener;)V

    .line 48
    :cond_0
    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    .prologue
    .line 27
    sget-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->d:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->values()[Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_1
    :try_start_1
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_2
    :try_start_2
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->NONE:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    :goto_3
    :try_start_3
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PAUSED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_4
    :try_start_4
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->PENDDING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_5
    :try_start_5
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-virtual {v1}, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_6
    sput-object v0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->d:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_6

    :catch_1
    move-exception v1

    goto :goto_5

    :catch_2
    move-exception v1

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_3

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v1

    goto :goto_1
.end method


# virtual methods
.method public getDownloadInfo(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6

    .prologue
    .line 94
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 96
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 97
    const-string/jumbo v1, "url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 98
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    const-string/jumbo v0, "H5DownloadPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invalid url "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 119
    :goto_0
    return-void

    .line 103
    :cond_0
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebulacore/download/Downloader;->getFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 104
    new-instance v4, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v4}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 107
    invoke-static {v3}, Lcom/alipay/mobile/nebulacore/util/FileUtil;->exists(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 108
    sget-object v1, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    .line 109
    const/16 v0, 0x64

    .line 114
    :goto_1
    const-string/jumbo v5, "status"

    invoke-static {v1}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v5, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    const-string/jumbo v1, "progress"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v1, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    const-string/jumbo v0, "url"

    invoke-virtual {v4, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    const-string/jumbo v0, "path"

    invoke-virtual {v4, v0, v3}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    invoke-interface {p2, v4}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 111
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebulacore/download/Downloader;->getStatus(Ljava/lang/String;)Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    move-result-object v1

    .line 112
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v0, v2}, Lcom/alipay/mobile/nebulacore/download/Downloader;->getProgress(Ljava/lang/String;)I

    move-result v0

    goto :goto_1
.end method

.method public handleEvent(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)Z
    .locals 2

    .prologue
    .line 180
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 181
    const-string/jumbo v1, "startDownload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 182
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->startDownload(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 188
    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 183
    :cond_1
    const-string/jumbo v1, "stopDownload"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->stopDownload(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0

    .line 185
    :cond_2
    const-string/jumbo v1, "getDownloadInfo"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 186
    invoke-virtual {p0, p1, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->getDownloadInfo(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    goto :goto_0
.end method

.method public onPrepare(Lcom/alipay/mobile/h5container/api/H5EventFilter;)V
    .locals 1

    .prologue
    .line 193
    const-string/jumbo v0, "startDownload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v0, "stopDownload"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v0, "getDownloadInfo"

    invoke-virtual {p1, v0}, Lcom/alipay/mobile/h5container/api/H5EventFilter;->addAction(Ljava/lang/String;)V

    .line 196
    return-void
.end method

.method public onProgress(Ljava/lang/String;I)V
    .locals 4

    .prologue
    .line 123
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    :cond_0
    :goto_0
    return-void

    .line 127
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 128
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string/jumbo v1, "status"

    sget-object v2, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->DOWNLOADING:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    invoke-static {v2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string/jumbo v1, "progress"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v2, "downloadEvent"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    goto :goto_0
.end method

.method public onRelease()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 174
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->b:Ljava/util/Set;

    .line 175
    iput-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    .line 176
    return-void
.end method

.method public onStatus(Ljava/lang/String;Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)V
    .locals 4

    .prologue
    .line 138
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 152
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 143
    const-string/jumbo v1, "url"

    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string/jumbo v1, "progress"

    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v2, p1}, Lcom/alipay/mobile/nebulacore/download/Downloader;->getProgress(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string/jumbo v1, "status"

    invoke-static {p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a(Lcom/alipay/mobile/nebulacore/download/Downloader$Status;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->c:Lcom/alipay/mobile/h5container/api/H5BridgeContext;

    const-string/jumbo v2, "downloadEvent"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendToWeb(Ljava/lang/String;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/mobile/h5container/api/H5CallBack;)V

    .line 149
    :cond_2
    sget-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->SUCCEED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-eq p2, v0, :cond_3

    sget-object v0, Lcom/alipay/mobile/nebulacore/download/Downloader$Status;->FAILED:Lcom/alipay/mobile/nebulacore/download/Downloader$Status;

    if-ne p2, v0, :cond_0

    .line 150
    :cond_3
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->b:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public startDownload(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v5, 0x0

    .line 51
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 52
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 53
    const-string/jumbo v2, "url"

    invoke-static {v0, v2}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 55
    const-string/jumbo v0, "H5DownloadPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invalid url "

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    :goto_0
    return-void

    .line 59
    :cond_0
    const-string/jumbo v3, "mobile"

    invoke-static {v0, v3, v5}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getBoolean(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 60
    const/4 v0, 0x3

    .line 63
    :goto_1
    new-instance v3, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v3}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 64
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->b:Ljava/util/Set;

    invoke-interface {v4, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 65
    iget-object v4, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v4, v2, v0}, Lcom/alipay/mobile/nebulacore/download/Downloader;->add(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const-string/jumbo v0, "success"

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_2
    invoke-interface {p2, v3}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 68
    :cond_1
    iget-object v0, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->b:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 69
    const-string/jumbo v0, "success"

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    move v0, v1

    goto :goto_1
.end method

.method public stopDownload(Lcom/alipay/mobile/h5container/api/H5Event;Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V
    .locals 4

    .prologue
    .line 75
    invoke-direct {p0, p2}, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a(Lcom/alipay/mobile/h5container/api/H5BridgeContext;)V

    .line 77
    invoke-virtual {p1}, Lcom/alipay/mobile/h5container/api/H5Event;->getParam()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    .line 78
    const-string/jumbo v1, "url"

    invoke-static {v0, v1}, Lcom/alipay/mobile/nebulacore/util/H5Utils;->getString(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 80
    const-string/jumbo v1, "H5DownloadPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "invalid url "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/alipay/mobile/nebulacore/util/H5Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    :goto_0
    return-void

    .line 84
    :cond_0
    new-instance v1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 85
    iget-object v2, p0, Lcom/alipay/mobile/nebulacore/plugin/H5DownloadPlugin;->a:Lcom/alipay/mobile/nebulacore/download/Downloader;

    invoke-interface {v2, v0}, Lcom/alipay/mobile/nebulacore/download/Downloader;->cancel(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 86
    const-string/jumbo v0, "success"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    :goto_1
    invoke-interface {p2, v1}, Lcom/alipay/mobile/h5container/api/H5BridgeContext;->sendBridgeResult(Lcom/alibaba/fastjson/JSONObject;)Z

    goto :goto_0

    .line 88
    :cond_1
    const-string/jumbo v0, "success"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1
.end method
