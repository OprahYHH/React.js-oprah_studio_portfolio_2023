import axios from 'axios';
import React, { useState, useEffect } from 'react';

export default function Tags({id}) {
    const [tags, setTags] = useState([]);

    useEffect(() => {
        const url = `https://oprahstudio-portfolio-react-backend.vercel.app/projects/tags/${id}`;
        const fetchData = async () => {
            try {
                const res = await axios.get(url);
                setTags(res.data);
            } catch (err) {
                console.error(err.message);
            }
        }
        fetchData();
    },[id]) 

    if (tags != null) {
        return (
            <>
                {tags.map((tag) => (
                <p className="pr-2 md:mr-2 text-sm pt-1 text-stone-400" key={tags}>
                    {tag.tag_name}
                </p>
                ))}
            </>
        )
    }
}