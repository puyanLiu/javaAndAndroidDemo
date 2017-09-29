.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;
.super Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
.source "BiliDanmukuParser.java"


# instance fields
.field private mDispScaleX:F

.field private mDispScaleY:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 45
    const-string/jumbo v0, "org.xml.sax.driver"

    const-string/jumbo v1, "org.xmlpull.v1.sax2.Driver"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;-><init>()V

    return-void
.end method

.method static synthetic access$1(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDisp:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;

    return-object v0
.end method

.method static synthetic access$2(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDispDensity:F

    return v0
.end method

.method static synthetic access$3(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mTimer:Lcom/alipay/mobile/beehive/compositeui/danmaku/model/DanmakuTimer;

    return-object v0
.end method

.method static synthetic access$4(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F
    .locals 1

    .prologue
    .line 48
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDispScaleX:F

    return v0
.end method

.method static synthetic access$5(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDispScaleY:F

    return v0
.end method


# virtual methods
.method public bridge synthetic parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDanmakus;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;

    move-result-object v0

    return-object v0
.end method

.method public parse()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    if-eqz v0, :cond_0

    .line 55
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDataSource:Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;

    check-cast v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;

    .line 57
    :try_start_0
    invoke-static {}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader()Lorg/xml/sax/XMLReader;

    move-result-object v1

    .line 58
    new-instance v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;

    invoke-direct {v2, p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;-><init>(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;)V

    .line 59
    invoke-interface {v1, v2}, Lorg/xml/sax/XMLReader;->setContentHandler(Lorg/xml/sax/ContentHandler;)V

    .line 60
    new-instance v3, Lorg/xml/sax/InputSource;

    invoke-virtual {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/AndroidFileSource;->data()Ljava/io/InputStream;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v1, v3}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 61
    invoke-virtual {v2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser$XmlContentHandler;->getResult()Lcom/alipay/mobile/beehive/compositeui/danmaku/model/android/Danmakus;
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 70
    :goto_0
    return-object v0

    .line 62
    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->printStackTrace()V

    .line 70
    :cond_0
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public setDisplayer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;
    .locals 2

    .prologue
    .line 264
    invoke-super {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;->setDisplayer(Lcom/alipay/mobile/beehive/compositeui/danmaku/model/IDisplayer;)Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/BaseDanmakuParser;

    .line 265
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDispWidth:I

    int-to-float v0, v0

    const v1, 0x442a8000    # 682.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDispScaleX:F

    .line 266
    iget v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDispHeight:I

    int-to-float v0, v0

    const/high16 v1, 0x43db0000    # 438.0f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/BiliDanmukuParser;->mDispScaleY:F

    .line 267
    return-object p0
.end method
