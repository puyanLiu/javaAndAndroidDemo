.class public Lcom/alipay/android/app/template/util/ShareHelper;
.super Ljava/lang/Object;
.source "ShareHelper.java"


# static fields
.field private static a:[Ljava/lang/String;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x2

    .line 50
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 51
    const-string/jumbo v2, "Weibo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "SMS"

    aput-object v2, v0, v1

    const-string/jumbo v1, "LaiwangContacts"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string/jumbo v2, "LaiwangTimeline"

    aput-object v2, v0, v1

    const-string/jumbo v1, "CopyLink"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    .line 52
    const-string/jumbo v2, "Weixin"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string/jumbo v2, "WeixinTimeLine"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string/jumbo v2, "ALPContact"

    aput-object v2, v0, v1

    .line 53
    const-string/jumbo v1, "QQ"

    aput-object v1, v0, v5

    const/16 v1, 0x9

    const-string/jumbo v2, "QZone"

    aput-object v2, v0, v1

    .line 50
    sput-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->a:[Ljava/lang/String;

    .line 59
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 60
    sput-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "SMS"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "Weibo"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "Weixin"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "WeixinTimeLine"

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "CopyLink"

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "LaiwangContacts"

    const/16 v2, 0x40

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "LaiwangTimeline"

    const/16 v2, 0x80

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "QQ"

    const/16 v2, 0x200

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "QZone"

    const/16 v2, 0x100

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    const-string/jumbo v1, "ALPContact"

    const/16 v2, 0x400

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 94
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    const/16 v2, 0x140

    if-le v0, v2, :cond_0

    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v0, 0x43a00000    # 320.0f

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-virtual {v5, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    move-object v0, p0

    move v2, v1

    move v6, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method static synthetic a(Landroid/content/Context;Lcom/alibaba/fastjson/JSONObject;ILcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V
    .locals 7

    .prologue
    .line 144
    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v0

    const-class v1, Lcom/alipay/mobile/framework/service/ShareService;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/framework/service/ShareService;

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Lcom/alipay/android/app/template/util/ShareHelper$2;

    invoke-direct {v1, p3}, Lcom/alipay/android/app/template/util/ShareHelper$2;-><init>(Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V

    invoke-virtual {v0, v1}, Lcom/alipay/mobile/framework/service/ShareService;->setShareActionListener(Lcom/alipay/mobile/framework/service/ShareService$ShareActionListener;)V

    const-string/jumbo v1, "icon"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {p1, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "content"

    invoke-virtual {p1, v3}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "description"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    const-string/jumbo v4, "url"

    invoke-virtual {p1, v4}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "extraInfo"

    invoke-virtual {p1, v5}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v5

    new-instance v6, Lcom/alipay/mobile/common/share/ShareContent;

    invoke-direct {v6}, Lcom/alipay/mobile/common/share/ShareContent;-><init>()V

    invoke-virtual {v6, v4}, Lcom/alipay/mobile/common/share/ShareContent;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/share/ShareContent;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/common/share/ShareContent;->setContent(Ljava/lang/String;)V

    const-string/jumbo v2, "url"

    invoke-virtual {v6, v2}, Lcom/alipay/mobile/common/share/ShareContent;->setContentType(Ljava/lang/String;)V

    invoke-virtual {v6, v1}, Lcom/alipay/mobile/common/share/ShareContent;->setIconUrl(Ljava/lang/String;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v6, v3}, Lcom/alipay/mobile/common/share/ShareContent;->setExtraInfo(Ljava/util/HashMap;)V

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v5}, Lcom/alibaba/fastjson/JSONObject;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    const/16 v1, 0x8

    if-ne p2, v1, :cond_5

    invoke-virtual {v6}, Lcom/alipay/mobile/common/share/ShareContent;->getIconUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/alipay/mobile/framework/AlipayApplication;->getInstance()Lcom/alipay/mobile/framework/AlipayApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/alipay/mobile/framework/AlipayApplication;->getMicroApplicationContext()Lcom/alipay/mobile/framework/MicroApplicationContext;

    move-result-object v1

    const-class v2, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/alipay/mobile/framework/MicroApplicationContext;->getExtServiceByInterface(Ljava/lang/String;)Lcom/alipay/mobile/framework/service/ext/ExternalService;

    move-result-object v1

    check-cast v1, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;

    invoke-virtual {v6}, Lcom/alipay/mobile/common/share/ShareContent;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/alipay/android/app/template/util/ShareHelper$3;

    invoke-direct {v4, v6, v0, p2}, Lcom/alipay/android/app/template/util/ShareHelper$3;-><init>(Lcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/alipay/android/phone/mobilecommon/multimedia/api/MultimediaImageService;->loadImage(Ljava/lang/String;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/APImageDownLoadCallback;Lcom/alipay/android/phone/mobilecommon/multimedia/graphics/ImageWorkerPlugin;)Lcom/alipay/android/phone/mobilecommon/multimedia/api/data/APMultimediaTaskModel;

    goto/16 :goto_0

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    new-instance v1, Lcom/alipay/android/app/template/util/ShareHelper$4;

    invoke-direct {v1, p0, v6, v0, p2}, Lcom/alipay/android/app/template/util/ShareHelper$4;-><init>(Landroid/content/Context;Lcom/alipay/mobile/common/share/ShareContent;Lcom/alipay/mobile/framework/service/ShareService;I)V

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Void;

    invoke-virtual {v1, v0}, Lcom/alipay/android/app/template/util/ShareHelper$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto/16 :goto_0

    :cond_5
    const-string/jumbo v1, "20001002"

    invoke-static {v1, v0, p2, v6}, Lcom/alipay/android/app/template/util/ShareHelper;->b(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ShareService;ILcom/alipay/mobile/common/share/ShareContent;)V

    goto/16 :goto_0
.end method

.method static synthetic a(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ShareService;ILcom/alipay/mobile/common/share/ShareContent;)V
    .locals 0

    .prologue
    .line 226
    invoke-static {p0, p1, p2, p3}, Lcom/alipay/android/app/template/util/ShareHelper;->b(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ShareService;ILcom/alipay/mobile/common/share/ShareContent;)V

    return-void
.end method

.method static synthetic a(Landroid/content/Context;)[B
    .locals 4

    .prologue
    .line 217
    const-string/jumbo v0, "appicon"

    invoke-static {p0, v0}, Lcom/alipay/android/app/template/ResUtils;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/graphics/Bitmap;II)[B
    .locals 2

    .prologue
    .line 84
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 85
    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-virtual {p0, v1, p1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 87
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 88
    array-length v1, v0

    if-le v1, p2, :cond_0

    .line 89
    add-int/lit8 v0, p1, -0x5

    invoke-static {p0, v0, p2}, Lcom/alipay/android/app/template/util/ShareHelper;->a(Landroid/graphics/Bitmap;II)[B

    move-result-object v0

    .line 91
    :cond_0
    return-object v0
.end method

.method private static b(Ljava/lang/String;Lcom/alipay/mobile/framework/service/ShareService;ILcom/alipay/mobile/common/share/ShareContent;)V
    .locals 3

    .prologue
    .line 229
    :try_start_0
    const-string/jumbo v0, "ShareUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shareContent send:[share content] "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobile/common/share/ShareContent;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 230
    const-string/jumbo v2, " ;[share type] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 229
    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string/jumbo v0, "ShareUtil"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "shareContent.getIconUrl:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/alipay/mobile/common/share/ShareContent;->getIconUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/alipay/mobile/common/logging/LogCatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1, p3, p2, p0}, Lcom/alipay/mobile/framework/service/ShareService;->silentShare(Lcom/alipay/mobile/common/share/ShareContent;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 237
    :goto_0
    return-void

    .line 234
    :catch_0
    move-exception v0

    .line 235
    const-string/jumbo v1, "ShareUtil"

    invoke-virtual {v0}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/alipay/mobile/common/logging/LogCatLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/graphics/Bitmap;)[B
    .locals 2

    .prologue
    .line 82
    const/16 v0, 0x50

    const/16 v1, 0x7148

    invoke-static {p0, v0, v1}, Lcom/alipay/android/app/template/util/ShareHelper;->a(Landroid/graphics/Bitmap;II)[B

    move-result-object v0

    return-object v0
.end method

.method public static share(Landroid/app/Activity;Lcom/alipay/android/app/json/JSONObject;Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V
    .locals 8

    .prologue
    .line 79
    invoke-virtual {p1}, Lcom/alipay/android/app/json/JSONObject;->getFastJsonObject()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const-string/jumbo v0, "channels"

    invoke-virtual {v3, v0}, Lcom/alibaba/fastjson/JSONObject;->getJSONArray(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->a:[Ljava/lang/String;

    move-object v1, v0

    :goto_0
    array-length v5, v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-lt v2, v5, :cond_2

    invoke-static {p0, v4}, Lcom/alipay/mobile/common/share/SharePopMenuHelper;->getSharePopList(Landroid/content/Context;Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/alipay/mobile/commonui/widget/APPopMenu;

    invoke-direct {v1, p0, v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string/jumbo v2, "\u5206\u4eab"

    invoke-virtual {v1, v0, v2}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->showAsDropDownTitleCenter(Landroid/view/View;Ljava/lang/String;)V

    new-instance v0, Lcom/alipay/android/app/template/util/ShareHelper$1;

    invoke-direct {v0, v4, p0, v3, p2}, Lcom/alipay/android/app/template/util/ShareHelper$1;-><init>(Ljava/util/ArrayList;Landroid/app/Activity;Lcom/alibaba/fastjson/JSONObject;Lcom/alipay/android/app/template/util/ShareHelper$ShareCallback;)V

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/commonui/widget/APPopMenu;->setOnItemClickListener(Lcom/alipay/mobile/commonui/widget/APPopMenu$OnItemClickListener;)V

    .line 80
    return-void

    .line 79
    :cond_1
    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSONArray;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    move-object v1, v0

    goto :goto_0

    :cond_2
    aget-object v6, v1, v2

    new-instance v7, Lcom/alipay/mobile/common/share/ShareItem;

    invoke-direct {v7}, Lcom/alipay/mobile/common/share/ShareItem;-><init>()V

    sget-object v0, Lcom/alipay/android/app/template/util/ShareHelper;->b:Ljava/util/Map;

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Lcom/alipay/mobile/common/share/ShareItem;->setShareType(I)V

    invoke-virtual {v7, v6}, Lcom/alipay/mobile/common/share/ShareItem;->setName(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1
.end method
