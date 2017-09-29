.class public final enum Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;
.super Ljava/lang/Enum;
.source "MtopResponseWrapper.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum BUSSINESSERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

.field public static final enum SESSIONINVALID:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

.field public static final enum SUCCESS:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

.field public static final enum SYSTEMERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SUCCESS:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    .line 6
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    const-string/jumbo v1, "SESSIONINVALID"

    invoke-direct {v0, v1, v3}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SESSIONINVALID:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    .line 7
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    const-string/jumbo v1, "SYSTEMERROR"

    invoke-direct {v0, v1, v4}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SYSTEMERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    .line 8
    new-instance v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    const-string/jumbo v1, "BUSSINESSERROR"

    invoke-direct {v0, v1, v5}, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->BUSSINESSERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    .line 4
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SUCCESS:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    aput-object v1, v0, v2

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SESSIONINVALID:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->SYSTEMERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->BUSSINESSERROR:Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    aput-object v1, v0, v5

    sput-object v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;
    .locals 1

    .prologue
    .line 1
    const-class v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    return-object v0
.end method

.method public static values()[Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1
    sget-object v0, Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;->ENUM$VALUES:[Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/android/phone/mobilesdk/mtop/MtopResponseWrapper$Status;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method
