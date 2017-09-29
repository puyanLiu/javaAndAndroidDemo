.class final Lcom/google/gson/DefaultTypeAdapters;
.super Ljava/lang/Object;
.source "DefaultTypeAdapters.java"


# static fields
.field private static final BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

.field private static final BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

.field private static final BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

.field private static final BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

.field private static final CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

.field private static final COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

.field private static final DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

.field private static final DEFAULT_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

.field static final DEFAULT_HIERARCHY_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

.field static final DEFAULT_HIERARCHY_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

.field private static final DEFAULT_INSTANCE_CREATORS:Lcom/google/gson/ParameterizedTypeHandlerMap;

.field private static final DEFAULT_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

.field private static final DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

.field private static final ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

.field private static final FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

.field private static final GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

.field private static final INET_ADDRESS_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultInetAddressAdapter;

.field private static final INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

.field private static final JAVA_SQL_DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter;

.field private static final LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

.field private static final LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

.field private static final MAP_TYPE_ADAPTER:Lcom/google/gson/MapTypeAdapter;

.field private static final NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

.field private static final SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

.field private static final STRING_BUFFER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBufferTypeAdapter;

.field private static final STRING_BUILDER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBuilderTypeAdapter;

.field private static final STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

.field private static final TIMESTAMP_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$DefaultTimestampDeserializer;

.field private static final TIME_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultTimeTypeAdapter;

.field private static final URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

.field private static final URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

.field private static final UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 63
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    .line 64
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->JAVA_SQL_DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter;

    .line 66
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultTimeTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/DefaultTypeAdapters$DefaultTimeTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->TIME_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultTimeTypeAdapter;

    .line 68
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultTimestampDeserializer;

    invoke-direct {v0}, Lcom/google/gson/DefaultTypeAdapters$DefaultTimestampDeserializer;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->TIMESTAMP_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$DefaultTimestampDeserializer;

    .line 72
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    .line 73
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    .line 74
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    .line 75
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    .line 76
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    .line 77
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DefaultInetAddressAdapter;

    invoke-direct {v0}, Lcom/google/gson/DefaultTypeAdapters$DefaultInetAddressAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->INET_ADDRESS_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultInetAddressAdapter;

    .line 79
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    .line 80
    new-instance v0, Lcom/google/gson/MapTypeAdapter;

    invoke-direct {v0}, Lcom/google/gson/MapTypeAdapter;-><init>()V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/google/gson/MapTypeAdapter;

    .line 81
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    .line 82
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    .line 84
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    .line 85
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    .line 86
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    .line 87
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    .line 88
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    .line 89
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    .line 90
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    .line 91
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    .line 92
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    .line 93
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    .line 94
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$StringBuilderTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$StringBuilderTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->STRING_BUILDER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBuilderTypeAdapter;

    .line 96
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$StringBufferTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$StringBufferTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->STRING_BUFFER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBufferTypeAdapter;

    .line 99
    new-instance v0, Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-direct {v0, v1}, Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;-><init>(Lcom/google/gson/DefaultTypeAdapters$1;)V

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    .line 105
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 107
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultHierarchySerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_HIERARCHY_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 109
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 111
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultHierarchyDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_HIERARCHY_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    .line 113
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->createDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    sput-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_INSTANCE_CREATORS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1034
    return-void
.end method

.method private static createDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3

    .prologue
    .line 165
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 167
    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 168
    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 169
    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 170
    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 171
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 172
    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->JAVA_SQL_DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 173
    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->TIMESTAMP_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$DefaultTimestampDeserializer;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 174
    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->TIME_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultTimeTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 175
    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 176
    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 177
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 178
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 181
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 182
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 183
    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 184
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 185
    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 186
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 187
    const-class v1, Ljava/lang/Double;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 188
    sget-object v1, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DOUBLE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DoubleDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 189
    const-class v1, Ljava/lang/Float;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 190
    sget-object v1, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->FLOAT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$FloatDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 191
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 192
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 193
    const-class v1, Ljava/lang/Long;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 194
    sget-object v1, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LONG_DESERIALIZER:Lcom/google/gson/DefaultTypeAdapters$LongDeserializer;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 195
    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 196
    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 197
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 198
    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 199
    const-class v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_BUILDER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBuilderTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 200
    const-class v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_BUFFER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBufferTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 202
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 203
    return-object v0
.end method

.method private static createDefaultHierarchyDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 209
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 210
    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INET_ADDRESS_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultInetAddressAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 211
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 212
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/google/gson/MapTypeAdapter;

    invoke-static {v2}, Lcom/google/gson/DefaultTypeAdapters;->wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 213
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 214
    return-object v0
.end method

.method private static createDefaultHierarchySerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 156
    const-class v1, Ljava/lang/Enum;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->ENUM_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$EnumTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 157
    const-class v1, Ljava/net/InetAddress;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INET_ADDRESS_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultInetAddressAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 158
    const-class v1, Ljava/util/Collection;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->COLLECTION_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CollectionTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 159
    const-class v1, Ljava/util/Map;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->MAP_TYPE_ADAPTER:Lcom/google/gson/MapTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 160
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 161
    return-object v0
.end method

.method private static createDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 7

    .prologue
    .line 219
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 221
    new-instance v1, Lcom/google/gson/DefaultConstructorAllocator;

    const/16 v2, 0x32

    invoke-direct {v1, v2}, Lcom/google/gson/DefaultConstructorAllocator;-><init>(I)V

    .line 224
    const-class v2, Ljava/util/Map;

    new-instance v3, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;

    const-class v4, Ljava/util/LinkedHashMap;

    invoke-direct {v3, v4, v1}, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;-><init>(Ljava/lang/Class;Lcom/google/gson/DefaultConstructorAllocator;)V

    invoke-virtual {v0, v2, v3}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 228
    new-instance v2, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;

    const-class v3, Ljava/util/ArrayList;

    invoke-direct {v2, v3, v1}, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;-><init>(Ljava/lang/Class;Lcom/google/gson/DefaultConstructorAllocator;)V

    .line 230
    new-instance v3, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;

    const-class v4, Ljava/util/LinkedList;

    invoke-direct {v3, v4, v1}, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;-><init>(Ljava/lang/Class;Lcom/google/gson/DefaultConstructorAllocator;)V

    .line 232
    new-instance v4, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;

    const-class v5, Ljava/util/HashSet;

    invoke-direct {v4, v5, v1}, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;-><init>(Ljava/lang/Class;Lcom/google/gson/DefaultConstructorAllocator;)V

    .line 234
    new-instance v5, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;

    const-class v6, Ljava/util/TreeSet;

    invoke-direct {v5, v6, v1}, Lcom/google/gson/DefaultTypeAdapters$DefaultConstructorCreator;-><init>(Ljava/lang/Class;Lcom/google/gson/DefaultConstructorAllocator;)V

    .line 236
    const-class v1, Ljava/util/Collection;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 237
    const-class v1, Ljava/util/Queue;

    invoke-virtual {v0, v1, v3}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 238
    const-class v1, Ljava/util/Set;

    invoke-virtual {v0, v1, v4}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 239
    const-class v1, Ljava/util/SortedSet;

    invoke-virtual {v0, v1, v5}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerForTypeHierarchy(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 241
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 242
    return-object v0
.end method

.method private static createDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3

    .prologue
    .line 117
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 120
    const-class v1, Ljava/net/URL;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UrlTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 121
    const-class v1, Ljava/net/URI;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->URI_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UriTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 122
    const-class v1, Ljava/util/UUID;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->UUUID_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$UuidTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 123
    const-class v1, Ljava/util/Locale;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->LOCALE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$LocaleTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 124
    const-class v1, Ljava/util/Date;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 125
    const-class v1, Ljava/sql/Date;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->JAVA_SQL_DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultJavaSqlDateTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 126
    const-class v1, Ljava/sql/Timestamp;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->DATE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultDateTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 127
    const-class v1, Ljava/sql/Time;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->TIME_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$DefaultTimeTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 128
    const-class v1, Ljava/util/Calendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 129
    const-class v1, Ljava/util/GregorianCalendar;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->GREGORIAN_CALENDAR_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$GregorianCalendarTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 130
    const-class v1, Ljava/math/BigDecimal;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_DECIMAL_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigDecimalTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 131
    const-class v1, Ljava/math/BigInteger;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BIG_INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BigIntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 134
    const-class v1, Ljava/lang/Boolean;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 135
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BOOLEAN_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$BooleanTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 136
    const-class v1, Ljava/lang/Byte;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 137
    sget-object v1, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->BYTE_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ByteTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 138
    const-class v1, Ljava/lang/Character;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 139
    sget-object v1, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->CHARACTER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$CharacterTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 140
    const-class v1, Ljava/lang/Integer;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 141
    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->INTEGER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$IntegerTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 142
    const-class v1, Ljava/lang/Number;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->NUMBER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$NumberTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 143
    const-class v1, Ljava/lang/Short;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 144
    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->SHORT_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$ShortTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 145
    const-class v1, Ljava/lang/String;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 146
    const-class v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_BUILDER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBuilderTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 147
    const-class v1, Ljava/lang/StringBuffer;

    sget-object v2, Lcom/google/gson/DefaultTypeAdapters;->STRING_BUFFER_TYPE_ADAPTER:Lcom/google/gson/DefaultTypeAdapters$StringBufferTypeAdapter;

    invoke-virtual {v0, v1, v2}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 149
    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->makeUnmodifiable()V

    .line 150
    return-object v0
.end method

.method static getAllDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 2

    .prologue
    .line 262
    invoke-static {}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;->copyOf()Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    .line 264
    sget-object v1, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_HIERARCHY_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 265
    return-object v0
.end method

.method static getAllDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 2

    .prologue
    .line 255
    const/4 v0, 0x0

    sget-object v1, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    invoke-static {v0, v1}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    .line 257
    sget-object v1, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_HIERARCHY_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->register(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 258
    return-object v0
.end method

.method static getDefaultDeserializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 1

    .prologue
    .line 296
    sget-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_DESERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    return-object v0
.end method

.method static getDefaultInstanceCreators()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 1

    .prologue
    .line 300
    sget-object v0, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_INSTANCE_CREATORS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    return-object v0
.end method

.method static getDefaultSerializers()Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 2

    .prologue
    .line 251
    const/4 v0, 0x0

    sget-object v1, Lcom/google/gson/LongSerializationPolicy;->DEFAULT:Lcom/google/gson/LongSerializationPolicy;

    invoke-static {v0, v1}, Lcom/google/gson/DefaultTypeAdapters;->getDefaultSerializers(ZLcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/ParameterizedTypeHandlerMap;

    move-result-object v0

    return-object v0
.end method

.method static getDefaultSerializers(ZLcom/google/gson/LongSerializationPolicy;)Lcom/google/gson/ParameterizedTypeHandlerMap;
    .locals 3

    .prologue
    .line 270
    new-instance v0, Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-direct {v0}, Lcom/google/gson/ParameterizedTypeHandlerMap;-><init>()V

    .line 274
    new-instance v1, Lcom/google/gson/DefaultTypeAdapters$DoubleSerializer;

    invoke-direct {v1, p0}, Lcom/google/gson/DefaultTypeAdapters$DoubleSerializer;-><init>(Z)V

    .line 276
    const-class v2, Ljava/lang/Double;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 277
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 280
    new-instance v1, Lcom/google/gson/DefaultTypeAdapters$FloatSerializer;

    invoke-direct {v1, p0}, Lcom/google/gson/DefaultTypeAdapters$FloatSerializer;-><init>(Z)V

    .line 282
    const-class v2, Ljava/lang/Float;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 283
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 286
    new-instance v1, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/google/gson/DefaultTypeAdapters$LongSerializer;-><init>(Lcom/google/gson/LongSerializationPolicy;Lcom/google/gson/DefaultTypeAdapters$1;)V

    .line 288
    const-class v2, Ljava/lang/Long;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 289
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Ljava/lang/reflect/Type;Ljava/lang/Object;)V

    .line 291
    sget-object v1, Lcom/google/gson/DefaultTypeAdapters;->DEFAULT_SERIALIZERS:Lcom/google/gson/ParameterizedTypeHandlerMap;

    invoke-virtual {v0, v1}, Lcom/google/gson/ParameterizedTypeHandlerMap;->registerIfAbsent(Lcom/google/gson/ParameterizedTypeHandlerMap;)V

    .line 292
    return-object v0
.end method

.method private static wrapDeserializer(Lcom/google/gson/JsonDeserializer;)Lcom/google/gson/JsonDeserializer;
    .locals 1

    .prologue
    .line 247
    new-instance v0, Lcom/google/gson/JsonDeserializerExceptionWrapper;

    invoke-direct {v0, p0}, Lcom/google/gson/JsonDeserializerExceptionWrapper;-><init>(Lcom/google/gson/JsonDeserializer;)V

    return-object v0
.end method
