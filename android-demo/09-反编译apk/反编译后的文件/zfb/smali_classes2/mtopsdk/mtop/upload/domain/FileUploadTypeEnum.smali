.class public final enum Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;
.super Ljava/lang/Enum;
.source "FileUploadTypeEnum.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

.field public static final enum NORMAL:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

.field public static final enum RESUMABLE:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;


# instance fields
.field private uploadType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 9
    new-instance v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    const-string/jumbo v1, "RESUMABLE"

    const-string/jumbo v2, "resumable"

    invoke-direct {v0, v1, v3, v2}, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->RESUMABLE:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    new-instance v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    const-string/jumbo v1, "NORMAL"

    const-string/jumbo v2, "normal"

    invoke-direct {v0, v1, v4, v2}, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->NORMAL:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    .line 7
    const/4 v0, 0x2

    new-array v0, v0, [Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    sget-object v1, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->RESUMABLE:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    aput-object v1, v0, v3

    sget-object v1, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->NORMAL:Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    aput-object v1, v0, v4

    sput-object v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->$VALUES:[Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->uploadType:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;
    .locals 1

    .prologue
    .line 7
    const-class v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    return-object v0
.end method

.method public static values()[Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;
    .locals 1

    .prologue
    .line 7
    sget-object v0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->$VALUES:[Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    invoke-virtual {v0}, [Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;

    return-object v0
.end method


# virtual methods
.method public final getUploadType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 15
    iget-object v0, p0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->uploadType:Ljava/lang/String;

    return-object v0
.end method

.method public final setUploadType(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 20
    iput-object p1, p0, Lmtopsdk/mtop/upload/domain/FileUploadTypeEnum;->uploadType:Ljava/lang/String;

    .line 21
    return-void
.end method
