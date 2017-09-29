.class public final enum Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;
.super Ljava/lang/Enum;
.source "EmotionFileStruct.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

.field public static final enum icon:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

.field public static final enum img:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

.field public static final enum info:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

.field public static final enum zip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;


# instance fields
.field private folder:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

.field private suffix:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 56
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "zip"

    .line 59
    const/4 v2, 0x0

    const-string/jumbo v3, ".zip"

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->zip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 61
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "icon"

    .line 64
    sget-object v2, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v3, "icon.png"

    invoke-direct {v0, v1, v5, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->icon:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 66
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "img"

    sget-object v2, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v3, ""

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->img:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 68
    new-instance v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    const-string/jumbo v1, "info"

    .line 71
    sget-object v2, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->unzip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    const-string/jumbo v3, "info.json"

    invoke-direct {v0, v1, v7, v2, v3}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;-><init>(Ljava/lang/String;ILcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;Ljava/lang/String;)V

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->info:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->zip:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->icon:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v5

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->img:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v6

    sget-object v1, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->info:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    aput-object v1, v0, v7

    sput-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 74
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->folder:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 77
    iput-object p4, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->suffix:Ljava/lang/String;

    .line 78
    iput-object p3, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->folder:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    .line 79
    return-void
.end method

.method static synthetic access$2(Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;)Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->folder:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->ENUM$VALUES:[Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final folderName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->folder:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->folder:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    invoke-virtual {v0}, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;->folder()Ljava/lang/String;

    .line 93
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final getFolder()Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->folder:Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionFolder;

    return-object v0
.end method

.method public final suffix()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/alipay/mobile/emotion/model/EmotionFileStruct$EmotionSuffix;->suffix:Ljava/lang/String;

    return-object v0
.end method
