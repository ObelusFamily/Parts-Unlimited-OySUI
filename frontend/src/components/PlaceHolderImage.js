import React from "react";
import Images from './assets';

const PlaceHolderImage = ({ uri, className, alt }) => {
    return (
        <div
            style={{
                justifyContent: 'center',
                alignItems: 'center',
            }}
        >

            {
                (uri) ? (
                    <img src={uri} className={className} alt={alt} />
                ) : (
                    <img src={Images.PLACEHOLDER} className={className} alt={alt} />
                )
            }

        </div>
    )
}

export default PlaceHolderImage;