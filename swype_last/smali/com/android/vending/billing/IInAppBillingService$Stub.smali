.class public abstract Lcom/android/vending/billing/IInAppBillingService$Stub;
.super Landroid/os/Binder;
.source "IInAppBillingService.java"

# interfaces
.implements Lcom/android/vending/billing/IInAppBillingService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/vending/billing/IInAppBillingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 2

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 39
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p0, p0, v0}, Lcom/android/vending/billing/IInAppBillingService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 40
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/vending/billing/IInAppBillingService;
    .registers 3
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 47
    if-nez p0, :cond_4

    .line 48
    const/4 v0, 0x0

    .line 54
    :goto_3
    return-object v0

    .line 50
    :cond_4
    const-string/jumbo v1, "com.android.vending.billing.IInAppBillingService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 51
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_14

    instance-of v1, v0, Lcom/android/vending/billing/IInAppBillingService;

    if-eqz v1, :cond_14

    .line 52
    check-cast v0, Lcom/android/vending/billing/IInAppBillingService;

    goto :goto_3

    .line 54
    :cond_14
    new-instance v0, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/vending/billing/IInAppBillingService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_3
.end method


# virtual methods
.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 14
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 62
    sparse-switch p1, :sswitch_data_e4

    .line 171
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0

    :goto_9
    return v0

    .line 66
    :sswitch_a
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    move v0, v7

    .line 67
    goto :goto_9

    .line 71
    :sswitch_12
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 75
    .local v1, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 78
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/vending/billing/IInAppBillingService$Stub;->isBillingSupported(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 79
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 80
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 81
    goto :goto_9

    .line 85
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v6    # "_result":I
    :sswitch_30
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 87
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 89
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 93
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_61

    .line 94
    sget-object v0, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/Bundle;

    .line 99
    .local v4, "_arg3":Landroid/os/Bundle;
    :goto_50
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getSkuDetails(ILjava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v6

    .line 100
    .local v6, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 101
    if-eqz v6, :cond_63

    .line 102
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 103
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_5f
    move v0, v7

    .line 108
    goto :goto_9

    .line 97
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Landroid/os/Bundle;
    :cond_61
    const/4 v4, 0x0

    .restart local v4    # "_arg3":Landroid/os/Bundle;
    goto :goto_50

    .line 106
    .restart local v6    # "_result":Landroid/os/Bundle;
    :cond_63
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_5f

    .line 112
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Landroid/os/Bundle;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_67
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 116
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 118
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 120
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 122
    .local v4, "_arg3":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .local v5, "_arg4":Ljava/lang/String;
    move-object v0, p0

    .line 123
    invoke-virtual/range {v0 .. v5}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getBuyIntent(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 124
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    if-eqz v6, :cond_94

    .line 126
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_91
    move v0, v7

    .line 132
    goto/16 :goto_9

    .line 130
    :cond_94
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_91

    .line 136
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v5    # "_arg4":Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_98
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 140
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 142
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 144
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 145
    .restart local v4    # "_arg3":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3, v4}, Lcom/android/vending/billing/IInAppBillingService$Stub;->getPurchases(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v6

    .line 146
    .restart local v6    # "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 147
    if-eqz v6, :cond_c0

    .line 148
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    invoke-virtual {v6, p3, v7}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    :goto_bd
    move v0, v7

    .line 154
    goto/16 :goto_9

    .line 152
    :cond_c0
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_bd

    .line 158
    .end local v1    # "_arg0":I
    .end local v2    # "_arg1":Ljava/lang/String;
    .end local v3    # "_arg2":Ljava/lang/String;
    .end local v4    # "_arg3":Ljava/lang/String;
    .end local v6    # "_result":Landroid/os/Bundle;
    :sswitch_c4
    const-string/jumbo v0, "com.android.vending.billing.IInAppBillingService"

    invoke-virtual {p2, v0}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 162
    .restart local v1    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 164
    .restart local v2    # "_arg1":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 165
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/vending/billing/IInAppBillingService$Stub;->consumePurchase(ILjava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 166
    .local v6, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 167
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeInt(I)V

    move v0, v7

    .line 168
    goto/16 :goto_9

    .line 62
    nop

    :sswitch_data_e4
    .sparse-switch
        0x1 -> :sswitch_12
        0x2 -> :sswitch_30
        0x3 -> :sswitch_67
        0x4 -> :sswitch_98
        0x5 -> :sswitch_c4
        0x5f4e5446 -> :sswitch_a
    .end sparse-switch
.end method
