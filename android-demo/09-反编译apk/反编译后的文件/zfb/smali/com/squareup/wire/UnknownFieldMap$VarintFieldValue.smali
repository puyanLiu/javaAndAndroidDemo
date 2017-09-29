.class final Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;
.super Lcom/squareup/wire/UnknownFieldMap$FieldValue;


# instance fields
.field private final value:Ljava/lang/Long;


# direct methods
.method public constructor <init>(ILjava/lang/Long;)V
    .locals 1

    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/UnknownFieldMap$FieldValue;-><init>(ILcom/squareup/wire/WireType;)V

    iput-object p2, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getAsLong()Ljava/lang/Long;
    .locals 1

    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 2

    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/squareup/wire/WireOutput;->varint64Size(J)I

    move-result v0

    return v0
.end method

.method public final write(ILcom/squareup/wire/WireOutput;)V
    .locals 2

    sget-object v0, Lcom/squareup/wire/WireType;->VARINT:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/WireOutput;->writeTag(ILcom/squareup/wire/WireType;)V

    iget-object v0, p0, Lcom/squareup/wire/UnknownFieldMap$VarintFieldValue;->value:Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p2, v0, v1}, Lcom/squareup/wire/WireOutput;->writeVarint64(J)V

    return-void
.end method
