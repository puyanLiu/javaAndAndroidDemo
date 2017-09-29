.class public Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lcom/alibaba/fastjson/parser/ParseContext;

.field private final b:Ljava/lang/String;

.field private c:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

.field private d:Lcom/alibaba/fastjson/parser/ParseContext;


# direct methods
.method public constructor <init>(Lcom/alibaba/fastjson/parser/ParseContext;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->a:Lcom/alibaba/fastjson/parser/ParseContext;

    iput-object p2, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->a:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getFieldDeserializer()Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->c:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-object v0
.end method

.method public getOwnerContext()Lcom/alibaba/fastjson/parser/ParseContext;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->d:Lcom/alibaba/fastjson/parser/ParseContext;

    return-object v0
.end method

.method public getReferenceValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setFieldDeserializer(Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->c:Lcom/alibaba/fastjson/parser/deserializer/FieldDeserializer;

    return-void
.end method

.method public setOwnerContext(Lcom/alibaba/fastjson/parser/ParseContext;)V
    .locals 0

    iput-object p1, p0, Lcom/alibaba/fastjson/parser/DefaultJSONParser$ResolveTask;->d:Lcom/alibaba/fastjson/parser/ParseContext;

    return-void
.end method
