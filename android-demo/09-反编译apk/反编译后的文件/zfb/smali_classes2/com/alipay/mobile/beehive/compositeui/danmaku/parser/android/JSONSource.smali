.class public Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;
.super Ljava/lang/Object;
.source "JSONSource.java"

# interfaces
.implements Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/IDataSource",
        "<",
        "Lorg/json/JSONArray;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

.field private static final synthetic ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;


# instance fields
.field private mInput:Ljava/io/InputStream;

.field private mJSONArray:Lorg/json/JSONArray;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .prologue
    .line 1
    invoke-static {}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->ajc$preClinit()V

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;)V
    .locals 6

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v0

    .line 52
    const-string/jumbo v1, "http"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "https"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 53
    :cond_0
    new-instance v1, Ljava/net/URL;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, p0, v1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v2

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v3

    const/4 v4, 0x0

    move-object v0, p0

    move-object v5, v2

    invoke-static/range {v0 .. v5}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->openStream_aroundBody3$advice(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->init(Ljava/io/InputStream;)V

    .line 57
    :cond_1
    :goto_0
    return-void

    .line 54
    :cond_2
    const-string/jumbo v1, "file"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 55
    new-instance v0, Ljava/io/FileInputStream;

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->init(Ljava/io/InputStream;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->init(Ljava/io/InputStream;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->init(Ljava/io/InputStream;)V

    .line 32
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-direct {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->init(Ljava/lang/String;)V

    .line 28
    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 43
    sget-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    invoke-static {v0, v2, p1}, Lorg/aspectj/runtime/reflect/Factory;->makeJP(Lorg/aspectj/lang/JoinPoint$StaticPart;Ljava/lang/Object;Ljava/lang/Object;)Lorg/aspectj/lang/JoinPoint;

    move-result-object v0

    invoke-static {}, Lcom/alipay/mobile/aspect/Monitor;->aspectOf()Lcom/alipay/mobile/aspect/Monitor;

    move-result-object v1

    invoke-static {p1, v0, v1, v2, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->openStream_aroundBody1$advice(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;-><init>(Ljava/io/InputStream;)V

    .line 44
    return-void
.end method

.method private static synthetic ajc$preClinit()V
    .locals 9

    .prologue
    .line 1
    new-instance v0, Lorg/aspectj/runtime/reflect/Factory;

    const-string/jumbo v1, "JSONSource.java"

    const-class v2, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;

    invoke-direct {v0, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "openStream"

    const-string/jumbo v3, "java.net.URL"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.InputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x2b

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v1

    sput-object v1, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->ajc$tjp_0:Lorg/aspectj/lang/JoinPoint$StaticPart;

    const-string/jumbo v8, "method-call"

    const-string/jumbo v1, "11"

    const-string/jumbo v2, "openStream"

    const-string/jumbo v3, "java.net.URL"

    const-string/jumbo v4, ""

    const-string/jumbo v5, ""

    const-string/jumbo v6, "java.io.IOException"

    const-string/jumbo v7, "java.io.InputStream"

    invoke-virtual/range {v0 .. v7}, Lorg/aspectj/runtime/reflect/Factory;->makeMethodSig(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/aspectj/lang/reflect/MethodSignature;

    move-result-object v1

    const/16 v2, 0x35

    invoke-virtual {v0, v8, v1, v2}, Lorg/aspectj/runtime/reflect/Factory;->makeSJP(Ljava/lang/String;Lorg/aspectj/lang/Signature;I)Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->ajc$tjp_1:Lorg/aspectj/lang/JoinPoint$StaticPart;

    return-void
.end method

.method private init(Ljava/io/InputStream;)V
    .locals 2

    .prologue
    .line 35
    if-nez p1, :cond_0

    .line 36
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "input stream cannot be null!"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->mInput:Ljava/io/InputStream;

    .line 38
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/IOUtils;->getString(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-direct {p0, v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->init(Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method private init(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 60
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 61
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->mJSONArray:Lorg/json/JSONArray;

    .line 63
    :cond_0
    return-void
.end method

.method private static final synthetic openStream_aroundBody0(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 43
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic openStream_aroundBody1$advice(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 194
    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "n/a"

    .line 198
    instance-of v2, v0, Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 199
    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " URL.open(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    const-string/jumbo v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p4}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "trafic beyond limit"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-static {p0, p1}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->openStream_aroundBody0(Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method private static final synthetic openStream_aroundBody2(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/io/InputStream;
    .locals 1

    .prologue
    .line 53
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method private static final synthetic openStream_aroundBody3$advice(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;Lcom/alipay/mobile/aspect/Monitor;Lorg/aspectj/runtime/internal/AroundClosure;Lorg/aspectj/lang/JoinPoint;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 194
    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getTarget()Ljava/lang/Object;

    move-result-object v0

    .line 197
    const-string/jumbo v1, "n/a"

    .line 198
    instance-of v2, v0, Ljava/net/URL;

    if-eqz v2, :cond_1

    .line 199
    check-cast v0, Ljava/net/URL;

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    :goto_0
    invoke-static {}, Lcom/alipay/mobile/common/logging/api/LoggerFactory;->getTraceLogger()Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;

    move-result-object v1

    const-string/jumbo v2, "Monitor"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, " URL.open(): "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 204
    const-string/jumbo v4, " at: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p5}, Lorg/aspectj/lang/JoinPoint;->getStaticPart()Lorg/aspectj/lang/JoinPoint$StaticPart;

    move-result-object v4

    invoke-interface {v4}, Lorg/aspectj/lang/JoinPoint$StaticPart;->getSourceLocation()Lorg/aspectj/lang/reflect/SourceLocation;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    invoke-interface {v1, v2, v3}, Lcom/alipay/mobile/common/logging/api/trace/TraceLogger;->info(Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    invoke-static {}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->getInstance()Lcom/alipay/mobile/monitor/api/ClientMonitor;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/alipay/mobile/monitor/api/ClientMonitor;->isTraficConsumeAccept(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string/jumbo v1, "trafic beyond limit"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 211
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->openStream_aroundBody2(Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;Ljava/net/URL;Lorg/aspectj/lang/JoinPoint;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public bridge synthetic data()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1
    invoke-virtual {p0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->data()Lorg/json/JSONArray;

    move-result-object v0

    return-object v0
.end method

.method public data()Lorg/json/JSONArray;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->mJSONArray:Lorg/json/JSONArray;

    return-object v0
.end method

.method public release()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iget-object v0, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->mInput:Ljava/io/InputStream;

    invoke-static {v0}, Lcom/alipay/mobile/beehive/compositeui/danmaku/util/IOUtils;->closeQuietly(Ljava/io/InputStream;)V

    .line 71
    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->mInput:Ljava/io/InputStream;

    .line 72
    iput-object v1, p0, Lcom/alipay/mobile/beehive/compositeui/danmaku/parser/android/JSONSource;->mJSONArray:Lorg/json/JSONArray;

    .line 73
    return-void
.end method
