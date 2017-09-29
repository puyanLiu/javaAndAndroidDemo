.class public final enum Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;
.super Ljava/lang/Enum;

# interfaces
.implements Lcom/squareup/wire/ProtoEnum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;",
        ">;",
        "Lcom/squareup/wire/ProtoEnum;"
    }
.end annotation


# static fields
.field public static final enum CONTACT_INCR:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

.field private static final synthetic ENUM$VALUES:[Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

.field public static final enum UPDATE_BINDINFO:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v2, 0x1

    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    const-string/jumbo v1, "UPDATE_BINDINFO"

    invoke-direct {v0, v1, v3, v2}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->UPDATE_BINDINFO:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    new-instance v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    const-string/jumbo v1, "CONTACT_INCR"

    invoke-direct {v0, v1, v2, v4}, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->CONTACT_INCR:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    new-array v0, v4, [Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    sget-object v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->UPDATE_BINDINFO:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    aput-object v1, v0, v3

    sget-object v1, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->CONTACT_INCR:Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    aput-object v1, v0, v2

    sput-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->ENUM$VALUES:[Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;
    .locals 1

    const-class v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    return-object v0
.end method

.method public static values()[Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;
    .locals 4

    const/4 v3, 0x0

    sget-object v0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->ENUM$VALUES:[Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    array-length v1, v0

    new-array v2, v1, [Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;

    invoke-static {v0, v3, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v2
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    iget v0, p0, Lcom/alipay/mobilerelation/biz/shared/rpc/pb/ContactUpdateScene;->value:I

    return v0
.end method
