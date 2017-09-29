.class public Lcom/taobao/gcanvas/GLog;
.super Ljava/lang/Object;
.source "GLog.java"


# static fields
.field public static final LEVEL_ASSERT:I = 0x7

.field public static final LEVEL_DEBUG:I = 0x3

.field public static final LEVEL_ERROR:I = 0x6

.field public static final LEVEL_FORCE:I = 0x0

.field public static final LEVEL_INFO:I = 0x4

.field public static final LEVEL_NULL:I = 0x9

.field public static final LEVEL_VERBOSE:I = 0x2

.field public static final LEVEL_WARN:I = 0x5

.field public static mLevel:I = 0x0

.field public static final mTag:Ljava/lang/String; = "CANVAS"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x4

    sput v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 66
    const-string/jumbo v0, "CANVAS"

    invoke-static {v0, p0}, Lcom/taobao/gcanvas/GLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 71
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    if-nez v0, :cond_0

    .line 72
    invoke-static {p0, p1}, Lcom/taobao/gcanvas/GLog;->force(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    :goto_0
    return-void

    .line 73
    :cond_0
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 79
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    .line 80
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 85
    const-string/jumbo v0, "CANVAS"

    invoke-static {v0, p0}, Lcom/taobao/gcanvas/GLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 89
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    .line 90
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 95
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    .line 96
    return-void
.end method

.method public static force(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    return-void
.end method

.method public static getLevel()I
    .locals 1

    .prologue
    .line 40
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    return v0
.end method

.method public static i(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 48
    const-string/jumbo v0, "CANVAS"

    invoke-static {v0, p0}, Lcom/taobao/gcanvas/GLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 52
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    if-nez v0, :cond_0

    .line 53
    invoke-static {p0, p1}, Lcom/taobao/gcanvas/GLog;->force(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    :goto_0
    return-void

    .line 54
    :cond_0
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 60
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    .line 61
    return-void
.end method

.method public static setLevel(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 19
    if-nez p0, :cond_0

    .line 37
    :goto_0
    return-void

    .line 23
    :cond_0
    const-string/jumbo v0, "force"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    const/4 v0, 0x0

    sput v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    .line 36
    :cond_1
    :goto_1
    invoke-static {p0}, Lcom/taobao/gcanvas/GCanvasJNI;->setLogLevel(Ljava/lang/String;)V

    goto :goto_0

    .line 25
    :cond_2
    const-string/jumbo v0, "debug"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 26
    const/4 v0, 0x2

    sput v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_1

    .line 27
    :cond_3
    const-string/jumbo v0, "info"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 28
    const/4 v0, 0x4

    sput v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_1

    .line 29
    :cond_4
    const-string/jumbo v0, "warn"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 30
    const/4 v0, 0x5

    sput v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_1

    .line 31
    :cond_5
    const-string/jumbo v0, "error"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 32
    const/4 v0, 0x6

    sput v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_1

    .line 33
    :cond_6
    const-string/jumbo v0, "fatal"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 34
    const/4 v0, 0x7

    sput v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_1
.end method

.method public static v(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 119
    const-string/jumbo v0, "CANVAS"

    invoke-static {v0, p0}, Lcom/taobao/gcanvas/GLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 123
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    if-nez v0, :cond_0

    .line 124
    invoke-static {p0, p1}, Lcom/taobao/gcanvas/GLog;->force(Ljava/lang/String;Ljava/lang/String;)V

    .line 126
    :goto_0
    return-void

    .line 125
    :cond_0
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 131
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    .line 132
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 101
    const-string/jumbo v0, "CANVAS"

    invoke-static {v0, p0}, Lcom/taobao/gcanvas/GLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 105
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    if-nez v0, :cond_0

    .line 106
    invoke-static {p0, p1}, Lcom/taobao/gcanvas/GLog;->force(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    :goto_0
    return-void

    .line 107
    :cond_0
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    goto :goto_0
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 113
    sget v0, Lcom/taobao/gcanvas/GLog;->mLevel:I

    .line 114
    return-void
.end method
