.class public final Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;
.super Lcom/squareup/wire/Message;


# static fields
.field public static final DEFAULT_RESULTCODE:Ljava/lang/Integer;

.field public static final DEFAULT_RESULTDESC:Ljava/lang/String; = ""

.field public static final DEFAULT_RESULTLIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;",
            ">;"
        }
    .end annotation
.end field

.field public static final DEFAULT_SUCCESS:Ljava/lang/Boolean;

.field public static final TAG_RESULTCODE:I = 0x2

.field public static final TAG_RESULTDESC:I = 0x3

.field public static final TAG_RESULTLIST:I = 0x4

.field public static final TAG_SUCCESS:I = 0x1


# instance fields
.field public resultCode:Ljava/lang/Integer;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x2
        type = .enum Lcom/squareup/wire/Message$Datatype;->INT32:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultDesc:Ljava/lang/String;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x3
        type = .enum Lcom/squareup/wire/Message$Datatype;->STRING:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field

.field public resultList:Ljava/util/List;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        label = .enum Lcom/squareup/wire/Message$Label;->REPEATED:Lcom/squareup/wire/Message$Label;
        tag = 0x4
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alipay/mobilerelation/biz/shared/rpc/pb/AlipayMobileContact;",
            ">;"
        }
    .end annotation
.end field

.field public success:Ljava/lang/Boolean;
    .annotation runtime Lcom/squareup/wire/ProtoField;
        tag = 0x1
        type = .enum Lcom/squareup/wire/Message$Datatype;->BOOL:Lcom/squareup/wire/Message$Datatype;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->DEFAULT_SUCCESS:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->DEFAULT_RESULTCODE:Ljava/lang/Integer;

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->DEFAULT_RESULTLIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/squareup/wire/Message;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/squareup/wire/Message;-><init>(Lcom/squareup/wire/Message;)V

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->success:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->success:Ljava/lang/Boolean;

    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultDesc:Ljava/lang/String;

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultDesc:Ljava/lang/String;

    iget-object v0, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    invoke-static {v0}, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->copyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    goto :goto_0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v2, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    check-cast p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->success:Ljava/lang/Boolean;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultDesc:Ljava/lang/String;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    iget-object v3, p1, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    invoke-virtual {p0, v2, v3}, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->equals(Ljava/util/List;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method public final fillTagValue(ILjava/lang/Object;)Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;
    .locals 1

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object p0

    :pswitch_0
    check-cast p2, Ljava/lang/Boolean;

    iput-object p2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->success:Ljava/lang/Boolean;

    goto :goto_0

    :pswitch_1
    check-cast p2, Ljava/lang/Integer;

    iput-object p2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    goto :goto_0

    :pswitch_2
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultDesc:Ljava/lang/String;

    goto :goto_0

    :pswitch_3
    check-cast p2, Ljava/util/List;

    invoke-static {p2}, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->immutableCopyOf(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public final hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->hashCode:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->success:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->success:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v2, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultCode:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->hashCode()I

    move-result v0

    :goto_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x25

    iget-object v2, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultDesc:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v1, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultDesc:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :cond_0
    add-int/2addr v0, v1

    mul-int/lit8 v1, v0, 0x25

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->resultList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    :goto_2
    add-int/2addr v0, v1

    iput v0, p0, Lcom/alipay/mobilerelation/rpc/protobuf/result/MobileContactListResult;->hashCode:I

    :cond_1
    return v0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    const/4 v0, 0x1

    goto :goto_2
.end method
