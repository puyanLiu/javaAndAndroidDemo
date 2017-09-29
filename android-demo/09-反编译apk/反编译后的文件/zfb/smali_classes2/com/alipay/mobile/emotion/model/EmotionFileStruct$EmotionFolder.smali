.class public final enum Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;
.super Ljava/lang/Enum;
.source "EmotionFileStruct.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

.field public static final enum b:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

.field public static final enum gif:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

.field public static final enum s:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

.field public static final enum sound:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

.field public static final enum unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;


# instance fields
.field private folder:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v1, "b"

    .line 19
    const-string/jumbo v2, "b"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->b:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 21
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v1, "s"

    .line 24
    const-string/jumbo v2, "s"

    invoke-direct {v0, v1, v4, v2}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->s:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 26
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v1, "gif"

    .line 29
    const-string/jumbo v2, "gif"

    invoke-direct {v0, v1, v5, v2}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->gif:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 31
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v1, "sound"

    .line 34
    const-string/jumbo v2, "sound"

    invoke-direct {v0, v1, v6, v2}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->sound:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 36
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v1, "unzip"

    .line 39
    const-string/jumbo v2, "magds"

    invoke-direct {v0, v1, v7, v2}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 15
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->b:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->s:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->gif:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->sound:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 44
    iput-object p3, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->folder:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final folder()Ljava/lang/String;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->folder:Ljava/lang/String;

    return-object v0
.end method
