.class final Lorg/android/spdy/MessageObj;
.super Ljava/lang/Object;
.source "MessageObj.java"


# instance fields
.field data:[B

.field fin:Z

.field head:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field length:I

.field session:Lorg/android/spdy/SpdySession;

.field statusCode:Lorg/android/spdy/SpdyStatusCode;

.field streamId:J

.field streamdata:I

.field superviseData:Ljava/lang/Object;

.field uniqueId:J

.field userData:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(Lorg/android/spdy/SpdySession;I)V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    .line 33
    iput p2, p0, Lorg/android/spdy/MessageObj;->streamdata:I

    .line 34
    return-void
.end method

.method constructor <init>(Lorg/android/spdy/SpdySession;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lorg/android/spdy/MessageObj;->session:Lorg/android/spdy/SpdySession;

    .line 28
    iput-object p2, p0, Lorg/android/spdy/MessageObj;->userData:Ljava/lang/Object;

    .line 29
    return-void
.end method
